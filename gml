#!/bin/bash

git diff-tree \
    --no-commit-id \
    --name-status \
    -r \
    $(git rev-parse HEAD); \

