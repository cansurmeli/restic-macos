# remove outdated snapshots
# --keep-last 20 - there won't be probably more hourly snapshots in last two days than 20
# --prune - delete repositories which should be forgotten

# --keep-last n never delete the n last (most recent) snapshots
# --keep-daily n for the last n days which have one or more snapshots, only keep the last one for that day.
# --keep-weekly n for the last n weeks which have one or more snapshots, only keep the last one for that week.
# --keep-monthly n for the last n months which have one or more snapshots, only keep the last one for that month.
# --keep-yearly n for the last n years which have one or more snapshots, only keep the last one for that year.
restic forget --keep-last 20 \
							--keep-daily 3 \
							--keep-weekly 2 \
							--keep-monthly 3 \
							--keep-yearly 1 \
							--prune \
							--cleanup-cache
