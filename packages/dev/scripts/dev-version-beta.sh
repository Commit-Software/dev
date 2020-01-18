#!/bin/sh
set -e

if [ -d "packages" ]; then
  yarn run lerna version prerelease --preid beta --yes --no-git-tag-version --no-push --allow-branch '*'
fi
