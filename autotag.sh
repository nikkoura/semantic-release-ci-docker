#!/usr/bin/env bash
cp .releaserc ..
cd ..
npx semantic-release
rm .releaserc