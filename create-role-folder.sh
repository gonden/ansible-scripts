#!/bin/bash

# Check if a role name was provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 "
    exit 1
fi

# Role name from the argument
ROLE_NAME=$1

# Base directories to create
BASE_DIRS=("tasks" "handlers" "vars" "defaults" "meta" "files" "templates")

# Create the main directory for the role
mkdir -p $ROLE_NAME

# Loop through the base directory list and create them one by one
for dir in "${BASE_DIRS[@]}"; do
    mkdir -p "$ROLE_NAME/$dir"
    echo "---" > "$ROLE_NAME/$dir/main.yml"  # Create a basic YAML file
done

echo "$ROLE_NAME role structure has been successfully created."
