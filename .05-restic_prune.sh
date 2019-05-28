# Remove old data not linked anymore.
# See restic-prune(1) or http://restic.readthedocs.io/en/latest/060_forget.html
restic prune \
        --option b2.connections=$B2_CONNECTIONS \
        --verbose &
