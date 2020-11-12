#!/usr/bin/env bash
echo "TRAVIS_BRANCH=$TRAVIS_BRANCH TRAVIS_PULL_REQUEST=$TRAVIS_PULL_REQUEST"
curl -LO --retry 3 https://raw.githubusercontent.com/plume-lib/trigger-travis/master/trigger-travis.sh
chmod +x trigger-travis.sh
./trigger-travis.sh "symengine" "api-docs" "$HZ_TOKEN" "Trigger documentation"
