#!/usr/bin/env bash
set -eo pipefail

if ! hash ghi 2>/dev/null; then
    echo "failed to find ghi, please install that first!"
    exit 1
fi

repos=(
    homebrew-umschlag
    umschlag-api
    umschlag-cli
    umschlag-ui
)

for repo in "${repos[@]}"; do
    echo "> listing ${repo} milestones"
    ghi milestone -l -- umschlag/${repo}
done
