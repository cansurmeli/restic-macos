#
#	This command simply runs a backup process with restic.
#
#	I don't follow the initial lesson of `Coverage` from `Tao
# of Backup` mentioned in the README. Maybe I am silly but I
# assume the times have changed and it is quite easy to re-install
# a machine with a fast internet connection. Time will tell. :]
#
# ADDITIONAL PARAMETER(s)
# 	- --quiet - do not output comprehensive progress report

# RESOUCES
#	- https://restic.readthedocs.io/en/stable/040_backup.html
#	- https://github.com/restic/restic/pull/1676
#

restic backup /Users/can/ \
	--exclude-caches \						# exclude cache directories
	--exclude='/Users/can/.abstract' \
	--exclude='/Users/can/.android' \
	--exclude='/Users/can/.bash_sessions' \
	--exclude='/Users/can/.bundle' \
	--exclude='/Users/can/.cabal' \
	--exclude='/Users/can/.cache' \
	--exclude='/Users/can/.config' \
	--exclude='/Users/can/.cups' \
	--exclude='/Users/can/.dbvis' \
	--exclude='/Users/can/.docker' \
	--exclude='/Users/can/.fastlane' \
	--exclude='/Users/can/.gem' \
	--exclude='/Users/can/.ghc' \
	--exclude='/Users/can/.gnupg' \
	--exclude='/Users/can/.gradle' \
	--exclude='/Users/can/.ipython' \
	--exclude='/Users/can/.itmstransporter' \
	--exclude='/Users/can/.ivy2' \
	--exclude='/Users/can/.local' \
	--exclude='/Users/can/.matplotlib' \
	--exclude='/Users/can/.node-gyp' \
	--exclude='/Users/can/.npm' \
	--exclude='/Users/can/.playground_templates' \
	--exclude='/Users/can/.restic' \
	--exclude='/Users/can/.stack' \
	--exclude='/Users/can/.Trash' \
	--exclude='/Users/can/.vim' \
	--exclude='/Users/can/.zcompcache' \
	--exclude='/Users/can/.zprezto' \
	--exclude='/Users/can/Downloads' \
	--exclude='/Users/can/Library' \
	--exclude='/Users/can/Movies' \
	--exclude='/Users/can/Music' \
	--exclude='/Users/can/Pictures' \
	--exclude='/Users/can/Public' \
