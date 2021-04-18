#!/bin/sh

BRANCH_NAME=${BRANCH_NAME:-master}

git pull --all
git checkout ${BRANCH_NAME}

gunicorn --chdir -c config.py app:app -w 7 -b 0.0.0.0:80