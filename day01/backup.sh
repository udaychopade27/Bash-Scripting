#!/bin/bash

# Source directory where backup has to be taken
src_dir="/home/uc2706/Linux-for-Devops"

# Target directory where backup files are to be stored
tgt_dir="/home/uc2706/backup"

# Current timestamp
curr_timestamp=$(date +"%Y-%m-%d-%H-%M")

echo "Backup Timestamp: $curr_timestamp"

# Backup filename
backup_file="$tgt_dir/backup_$curr_timestamp.tgz"

echo "Backup Filename: $backup_file"

# Create the backup
tar -czf "$backup_file" -C "$src_dir" .

echo "Backup Complete"

