# README

This repository outlines my approach to off-site backing up of a machine with macOS. I make use of restic as the backup program which stores the data to Backblaze.

## What is restic?

[Restic](https://restic.net/) is a modern CLI backup program for backing up your files on various operating systems.

## What is Backblaze?

[Backblaze](https://www.backblaze.com) is a cloud storage and data backup company from America. Although, they also have EU data centres in the Netherlands.

## In detail

As mentioned above, restic is a CLI tool so the core of the operations are executed via 
regular Shell scripts. These scripts are structured in a similar fashion to Linux system files with level designations indicated in their file names.

In basic form, initially a backup is done which is followed a forget operation to delete previous backups that are deemed unnecessary based on the defined parameters. Then finaly, a check is run to check the integrity of the backups.

The above operations can be initiated with the file `backup.sh`. However, if one wants automatic backups in the background with notifications the Swift wrapper is required to do so. Due to recent security changes in macOS, the regular cron jobs don't cut for periodic backup operations in the background. Another advantage of using Swift is the native macOS notifications that can be enabled on will.
