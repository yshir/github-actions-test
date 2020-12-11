#!/usr/bin/env bash

set -ex

if [ ! $DEPLOY_ENV ]; then
  echo 'Set deploy environment to environment variable $DEPLOY_ENV'
  exit 1
fi

echo $DEPLOY_ENV
echo "HELLO"
