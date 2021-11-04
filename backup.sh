#!/usr/bin/env bash

# Acknowledge the required environment variables by Restic
source /Users/can/.confidential/restic_credentials

# Execute the backup scenario
sh ./.01-restic_backup.sh
sh ./.10-restic_forget.sh
sh ./.11-restic_check.sh
