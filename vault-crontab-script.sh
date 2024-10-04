#!/bin/bash


# Get the current user
user=$(whoami)

echo "$user"

# Get the current timestamp
time=$(date +%Y%m%d%H%M%S)

# Change directory to the specified path
cd "/Users/$user/Vault/"

# Check the Git status
status=$(git status --short)
echo "$status"

# If there are changes, commit and push
if [[ -n "$status" ]]; then
    git add .
    echo ""

    git commit -m "$time"
    echo ""

    var=$(git push)
    echo "$var"
fi

echo "done $time"
