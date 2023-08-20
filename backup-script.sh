#!/bin/bash

DIRECTORY_TO_BACKUP="$1"
COMPRESSION_ALGORITHM="$2"
OUTPUT_FILE_NAME="$3"
ERROR_LOG="error.log"

echo "Starting the backup process..."
echo "Directory to backup: $DIRECTORY_TO_BACKUP"
echo "Compression algorithm: $COMPRESSION_ALGORITHM"
echo "Output file name: $OUTPUT_FILE_NAME"

