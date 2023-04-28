#!/bin/bash

# Define the source and destination directories
SOURCE_DIR="/path/to/source/directory"
DEST_DIR="/path/to/destination/directory"

# Define the rsync command
RSYNC_CMD="rsync -avz --delete ${SOURCE_DIR}/ ${DEST_DIR}/"

# Define the log file path
LOG_FILE="/var/log/data_sync.log"

# Log the start time
echo "Data syncing started at $(date)" >> $LOG_FILE

# Run the rsync command and log the output
$RSYNC_CMD >> $LOG_FILE 2>&1

# Log the end time
echo "Data syncing ended at $(date)" >> $LOG_FILE
