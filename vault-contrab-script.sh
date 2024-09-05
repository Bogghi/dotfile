#!/bin/bash
user=$(whoami)
time=$(date '+%Y%m%d%H%M%S')

repo_path="/Users/$user/Vault"

cd "$repo_path"

status=$(git status --short)

if [[ -n "$status" ]]; then
   add=$(git add .)
   commit=$(git commit -m "$time")
   push=$(git push)
   echo "committed $status at $time"
   echo "log: $add"
   echo "log: $commit"
   echo "log: $push"
fi
