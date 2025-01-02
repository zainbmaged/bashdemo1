#!/bin/bash

# Usage: viewer.sh <file>
FILE="$1"

# Check if file exists
if [ $# -eq 0 ]; then
  echo "Error: No file provided"
  exit 1
fi

for FILE in "$@";do
    if [ ! -f "$FILE" ]; then
      echo "Error:  file not found"
      continue
    fi
    # Output file contents  
    echo "Contents of $FILE:"
    cat "$FILE"

    # Show file info
    echo -e "\nFile info for '$FILE':"
    ls -lh "$FILE" | awk '{print "Size: " $5 "\nLast modified: " $6, $7, $8}'
done