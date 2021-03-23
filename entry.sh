#!/bin/sh

BRANCH_NAME=${BRANCH_NAME:-master}

git pull --all
git checkout ${BRANCH_NAME}

python app.py 80