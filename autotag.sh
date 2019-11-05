#!/usr/bin/env bash

SCRIPT_PATH="${BASH_SOURCE%/*}/"

# Run semantic release, which require .releaserc in the current dir
if [ -f .releaserc ] ; then 
  npx semantic-release
else
  cp "${SCRIPT_PATH}/.releaserc" .
  npx semantic-release
  rm .releaserc
fi
