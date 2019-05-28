#http://taobackup.com/

# Exclusion in the context of backing up is a highly debatable subject. and Tao of Backup states that everything should be backed up regardless.
# Even though, Tao of Backup makes some pretty reasonable points in backign up in general, I find excluding some files/folders plausable.
# There are a lot of garbage/cache that comes with our installations these days.
# They'll cover a lot more space adn more over, they'll reuqire more time to backup since they constantly change.
# Therefore, I conclude by saying things can be excluded.
# However, you're encouraged to read Tao of Backup and come to your own conclusion.

# --quiet - should speed up backup process
# https://github.com/restic/restic/pull/1676
restic backup ~ \
	--exclude-caches \
	--exclude='~/.abstract' \
	--exclude='~/.android' \
	--exclude='~/.bash_sessions' \
	--exclude='~/.bundle' \
	--exclude='~/.cabal' \
	--exclude='~/.cache' \
	--exclude='~/.config' \
	--exclude='~/.cups' \
	--exclude='~/.dbvis' \
	--exclude='~/.docker' \
	--exclude='~/.fastlane' \
	--exclude='~/.gem' \
	--exclude='~/.ghc' \
	--exclude='~/.gnupg' \
	--exclude='~/.gradle' \
	--exclude='~/.ipython' \
	--exclude='~/.itmstransporter' \
	--exclude='~/.local' \
	--exclude='~/.matplotlib' \
	--exclude='~/.node-gyp' \
	--exclude='~/.npm' \
	--exclude='~/.playground_templates' \
	--exclude='~/.stack' \
	--exclude='~/.Trash' \
	--exclude='~/Library' \
	--exclude='~/Movies' \
	--exclude='~/Music' \
	--exclude='~/Public' \
