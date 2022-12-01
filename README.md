# README

This repository outlines my approach to off-site backing up of a machine with macOS. I make use of restic as the backup program which stores the data to Backblaze.

## What is restic?

[Restic](https://restic.net/) is a modern CLI backup program for backing up your files on various operating systems.

You can simply install it with [Homebrew](https://www.brew.sh):

> brew install restic

## What is Backblaze?

[Backblaze](https://www.backblaze.com) is a cloud storage and data backup company from America. Although, they also have EU data centres in the Netherlands.

## In detail

As mentioned above, restic is a CLI tool so the core of the operations are executed via 
regular Shell scripts. These scripts are structured in a similar fashion to Linux system files with level designations indicated in their file names.

In basic form, initially a backup is done which is followed a forget operation to delete previous backups that are deemed unnecessary based on the defined parameters. Then finaly, a check is run to check the integrity of the backups.

The above operations can be initiated with the file `backup.sh`. However, if one wants automatic backups in the background with notifications the Swift wrapper is required to do so. Due to recent security changes in macOS, the regular cron jobs don't cut for periodic backup operations in the background. Another advantage of using Swift is the native macOS notifications that can be enabled on will.

## A Story About Backing Up

There is an interesting website [here](http://taobackup.com/) that goes into explaining a backup philosophy in the form of a story in between a senior and a junior. I don't follow all of it which is ironic. May I'm still the junior in this scenario. But it is still a joy to read.

## My Backup Strategy

I simply follow the [3-2-1 strategy](https://www.makeuseof.com/3-2-1-backup-strategy/) which states that there should be three backups in total. Two of them should stay in-site for quick access and one of them shall be places off-site against dangers that could occure at the site.

## Setup

As mentioned above, this approach uses Backblaze as a storage provider. However, restic supports [many more](https://restic.readthedocs.io/en/stable/030_preparing_a_new_repo.html) providers. With some minor modifications, you can simply backup to another end.

### Brand new setup

1. Clone this repo:
    - `git clone ...`
2. Get into the repo:
    - `cd restic-macos`
3. Execute the following commands one-by-one to securely store your passwords/secrets:
    - security add-generic-password -s backup-restic-backblaze-account-id -w
    - security add-generic-password -s backup-restic-backblaze-account-key -w
    - security add-generic-password -s backup-restic-backblaze-repository-password -w
    - security add-generic-password -s backup-restic-backblaze-repository -w

### Reestablishing a previous setup



## RESOURCES

I started this as my own approach but in due time, I found ideas to improve. I would like to genuinely thank the following people below for their ideas. :]

- https://www.grzegorowski.com/restic-backblaze-b2-backups
- https://szymonkrajewski.pl/macos-backup-restic/
- http://taobackup.com/









