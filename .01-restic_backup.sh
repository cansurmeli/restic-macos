#http://taobackup.com/

# Exclusion in the context of backing up is a highly debatable subject. and Tao of Backup states that everything should be backed up regardless.
# Even though, Tao of Backup makes some pretty reasonable points in backign up in general, I find excluding some files/folders plausable.
# There are a lot of garbage/cache that comes with our installations these days.
# They'll cover a lot more space adn more over, they'll reuqire more time to backup since they constantly change.
# Therefore, I conclude by saying things can be excluded.
# However, you're encouraged to read Tao of Backup and come to your own conclusion.

# --quiet - should speed up backup process
# https://github.com/restic/restic/pull/1676
restic backup /Users/can/ \
	--exclude-caches \
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
