#!/bin/bash

# This script attempts to process files in a directory, but it has a subtle bug.
# It fails to handle directories that contain spaces in their names.

# Get the directory name from the command-line argument
directory=$1

# Check if the directory exists
if [ ! -d "$directory" ]; then
  echo "Error: Directory '$directory' does not exist." >&2
  exit 1
fi

# Loop through the files in the directory
for file in "$directory"/*; do
  # Check if it's a regular file
  if [ -f "$file" ]; then
    echo "Processing file: $file"
    # Process the file here...  (Replace with your actual processing logic)
  fi
 done