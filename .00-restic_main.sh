#!/usr/bin/env bash
source .01-restic_credentials
sh ./02-restic_backup.sh
sh ./03-restic_forget.sh
sh ./04-restic_prune.sh
sh ./05-restic_check.sh
