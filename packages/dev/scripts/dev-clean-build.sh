#!/bin/bash

set -e

function clean_build () {
  ROOT=$1

  echo ""
  echo "*** Cleaning build directory $ROOT/lib"

  rimraf $ROOT/lib
}

clean_build "."

if [ -d "packages" ]; then
  PACKAGES=( $(ls -1d packages/*) )

  for PACKAGE in "${PACKAGES[@]}"; do
    clean_build "$PACKAGE"
  done
fi

exit 0
