#
#   The `check` command of restic tests the repository against
# errors and reports if any are found.
#
#   By default, this command loads all data from the repository
# and not uses any local data. This is done on purpose since
# restic is built for safety and security.
#
#   However, this situation can be changed with the flag
# `--with-cache` which will only download metadata files and
# run checks on them. This will be more economical in terms of
# your Backblaze bill at the end of the month since Backblaze's
# developer package is billed based on the amount of download
# and upload.
#
#   RESOURCE(s)
#   - https://restic.readthedocs.io/en/latest/045_working_with_repos.html#checking-integrity-and-consistency
#   - https://forum.restic.net/t/limiting-b2-transactions/209/4
#   - https://man.archlinux.org/man/restic-check.1.en

restic check --with-cache   # limits Class B Transactions on BackBlaze B2
