#!/usr/bin/env bash

set -ex

if [ ! $DEPLOY_ENV ]; then
    echo 'Set deploy environment to environment variable $DEPLOY_ENV'
    exit 1
fi

if [ ! $AWS_REGION ]; then
    echo 'Set AWS default region to environment variable $AWS_REGION'
    exit 1
fi

if [ ! $AWS_ACCESS_KEY_ID ]; then
    echo 'Set your AWS access key to environment variable $AWS_ACCESS_KEY_ID'
    exit 1
fi

if [ ! $AWS_SECRET_ACCESS_KEY ]; then
    echo 'Set your AWS secret access key to environment variable $AWS_SECRET_ACCESS_KEY'
    exit 1
fi

if [ ! $AWS_ACCOUNT_ID ]; then
    echo 'Set your AWS account id to environment variable $AWS_ACCOUNT_ID'
    exit 1
fi

echo 'OK'
