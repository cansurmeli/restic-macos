#!/usr/bin/env bash

##################################
# Avoid running multiple backups #
##################################
FILE_PID=~/.restic_backblaze/backup.pid

# If file exists meaning there is another backup process running
if [ -f "$FILE_PID" ]; then
	if ps -p $(cat $FILE_PID) > /dev/null; then
		echo $(date + "%Y-%m-%d %T") "File $FILE_PID exists. Another backup is probably in progress."
		exit 1
	else
		echo $(date + "%Y-%m-%d %T") "File $FILE_PID exists BUT process "$(cat $FILE_PID)" not found. Removing the current PID file."
		rm ~/.restic_backblaze/backup.pid
	fi
fi

# If there is no PID file meaning that there is not another backup running
echo $$ > $FILE_PID

# Report about backup start
echo $(date +"%Y-%m-%d %T") "A new backup has started."

########################
# Add a time condition #
########################
FILE_TIME_STAMP=~/.restic_backblaze/backup_timestamp

if [ -f "$FILE_TIME_STAMP" ]; then
	time_run=$(cat "$FILE_TIME_STAMP")
	time_current=$(date +  "%s")

	if [ "$time_current" -lt "$time_run" ]; then
		exit 2
	fi
fi

###################################
# Backup only on trusted networks #
###################################
# For debugging:
#		$ networksetup -listallhardwareports
if [[ $(networksetup -getairportnetwork en1 | grep -E "Los Pollos Hermanos") == "" ]]; then
  echo $(date +"%Y-%m-%d %T") "WARNING: Backups are NOT allowed within untrusted networks. Exiting..."
  exit 3
fi

#####################################
# Backup only when plugged to power #
#####################################
if [[ $(pmset -g ps | head -1) =~ "Battery" ]]; then
  echo $(date +"%Y-%m-%d %T") "WARNING: Backups are only allowed when connected to a power source. Exiting..."
  exit 4
fi

####################
# Grab the secrets #
####################
export B2_ACCOUNT_ID=$(security find-generic-password -s backup-restic-backblaze-account-id -w)
export B2_ACCOUNT_KEY=$(security find-generic-password -s backup-restic-backblaze-account-key -w)
export RESTIC_PASSWORD=$(security find-generic-password -s backup-restic-backblaze-repository-password -w)
export RESTIC_REPOSITORY=$(security find-generic-password -s backup-restic-backblaze-repository -w)

###############################
# Execute the backup scenario #
###############################
sh ./.01-restic_backup.sh
sh ./.10-restic_forget.sh
sh ./.11-restic_check.sh

#####################
# Finishing Touches #
#####################
# Report about the backup end
echo $(date +"%Y-%m-%d %T") "Backup has finished."

# At which interval to run the script: adds a 10 hour threshold
echo $(date -v +10H +"%s") > $FILE_TIME_STAMP

# Remove the PID file for another backup later
rm ~/.restic_backblaze/backup.pid
