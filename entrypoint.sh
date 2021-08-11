#!/bin/bash

PARENT_DIR="$(dirname $FILE_NAME)"

echo "Ensuring the parent of directory $FILE_NAME exists"
mkdir -p $PARENT_DIR

if [[ -z "${FILE_BASE64}" ]]; then
  echo "Using FILE_DATA to write to $FILE_NAME"
  echo $FILE_DATA > "$FILE_NAME"
else
  echo "Using FILE_BASE64 to write to $FILE_NAME"
  echo $FILE_BASE64 | base64 --decode > $FILE_NAME
fi
