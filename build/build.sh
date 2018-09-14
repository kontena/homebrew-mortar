#!/bin/bash

# Requires:
# - Git
# - Bundler

set -uxe

[[ $PWD == *build ]] && cd .. # Go to repo root dir if running from build/

cd mortar
git fetch origin

if [ "${1:-}" == '--latest-stable' ]; then
  latest=$(git tag --sort=committerdate | grep -v -- - | tail -1)
else
  latest=$(git tag --sort=committerdate | tail -1)
fi

[[ $latest == *-* ]] && (>&2 echo "Latest is a prerelease version ($latest)" && exit 1)

git stash
git checkout ${latest}
echo "Building formula for mortar-$latest"

rm -rf .bundle
rm -rf vendor
bundle update
bundle install --without development test --deployment
bundle package

cd ..

ruby build/update_resources.rb "$latest" > Formula/mortar.rb
