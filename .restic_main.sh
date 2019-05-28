#!/usr/bin/env bash
source .restic_credentials
sh ./restic_backup.sh
sh ./restic_forget.sh
sh ./restic_check.sh
