#!/bin/bash

# This script correctly processes files in a directory, even if the directory name contains spaces.

# Get the directory name from the command-line argument
directory=$1

# Check if the directory exists
if [ ! -d "$directory" ]; then
  echo "Error: Directory '$directory' does not exist." >&2
  exit 1
fi

# Use find to handle spaces correctly
find "$directory" -maxdepth 1 -type f -print0 | while IFS= read -r -d $'\0' file; do
  echo "Processing file: $file"
  # Process the file here... (Replace with your actual processing logic)
done