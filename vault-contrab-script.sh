#!/bin/bash
user=$(whoami)
time=$(date '+%Y%m%d%H%M%S')

repo_path="/Users/$user/Vault"

cd "$repo_path"

status=$(git status --short)

if [[ -n "$status" ]]; then
   add=$(git add .)
   commit_and_push=$(git commit -m "$time" && git push)
   echo "committed $status at $time"
   echo "log-add: $add"
   echo "log-commit: $commit_and_push"
fi

echo "done $time"
