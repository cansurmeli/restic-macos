#
#	The `forget` command of restic removes snapshots from the
# repository. The removal is done based on the defined parameters.
#
# 	The purpose here is to manage your storage space. Sure, data
# storage is cheaper than ever and keep getting cheaper and cheaper
# BUT it is not infinite. Hence, needs to be managed.
#
#	RESOURCES
#	- https://restic.readthedocs.io/en/latest/060_forget.html
#	- https://man.archlinux.org/man/restic-forget.1.en
#

restic forget --keep-last 20 \		# keep the last n snapshots
			  --keep-daily 3 \		# keep the last n daily snapshots
			  --keep-weekly 2 \		# keep the last n weekly snapshots
			  --keep-monthly 3 \	# keep the last n monthly snapshots
			  --keep-yearly 1 \		# keep the last n yearly snapshots
			  --prune \				# delete repositories which should be forgotten
			  --cleanup-cache		# auto remove old cache directories
