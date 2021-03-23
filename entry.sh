#!/bin/sh

BRANCH_NAME=${BRANCH_NAME:-master}

git pull --all
git checkout ${BRANCH_NAME}

python api.py 80