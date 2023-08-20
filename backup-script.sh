#!/bin/bash

# Check if the right number of parameters are given
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <directory_to_backup> <compression_algorithm> <output_file_name>" >> error.log
  exit 1
fi

# Assign the parameters to variables
DIRECTORY_TO_BACKUP="$1"
COMPRESSION_ALGORITHM="$2"
OUTPUT_FILE_NAME="$3"
PASSWORD="password"
ERROR_LOG="error.log"

echo "Starting the backup process..."
echo "Directory to backup: $DIRECTORY_TO_BACKUP"
echo "Compression algorithm: $COMPRESSION_ALGORITHM"
echo "Output file name: $OUTPUT_FILE_NAME"

# Determine the compression flag for tar
case $COMPRESSION_ALGORITHM in
  "none")
    tar_option=""
    ;;
  "gzip")
    tar_option="z"
    ;;
  "bzip2")
    tar_option="j"
    ;;
  "xz")
    tar_option="J"
    ;;
  *)
    echo "Unknown compression type. Use 'none', 'gzip', 'bzip2', or 'xz'." >> $ERROR_LOG
    exit 1
    ;;
esac