# remove outdated snapshots
# --keep-last 20 - there won't be probably more hourly snapshots in last two days than 20
# --prune - delete repositories which should be forgotten
restic forget --keep-last 20 \
							--keep-daily 7 \
							--keep-weekly 4 \
							--keep-monthly 6 \
							--keep-yearly 3 \
							--prune \
							--cleanup-cache
