#!/bin/sh

BRANCH_NAME=${BRANCH_NAME:-master}

git pull --all
git checkout ${BRANCH_NAME}

gunicorn --chdir /loadgen-test app:app -w 4 --threads 4 -b 0.0.0.0:80