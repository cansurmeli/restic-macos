#!/usr/bin/env bash
source .00-restic_credentials
sh ./.01-restic_backup.sh
sh ./.02-restic_forget.sh
sh ./.03-restic_check.sh
