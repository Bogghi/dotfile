#!/bin/bash
user=$(whoami)
time=$(date '+%Y%m%d%H%M%S')

repo_path="/Users/$user/Vault"

cd "$repo_path"

status=$(git status --short)

if [[ -n "$status" ]]; then
   git add .
   echo " "

   git commit -m "$time"
   echo " "

   git push
   echo " "
fi

echo "done $time"