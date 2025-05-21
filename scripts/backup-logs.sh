#!/bin/bash

timestamp=$(date +%F_%H-%M-%S)
backup_dir=~/lia-linux-project/logs/backups/$timestamp

mkdir -p "$backup_dir"
cp -r /var/log/remote "$backup_dir"

echo "Logs backed up to $backup_dir"
