#!/bin/bash
#
# Error related Bash library
# SPDX-License-Identifier: AGPL-3.0-or-later
# (c) 2020, Alexandre Le Roy <ale-roy@student.42.fr>

#######################################
# Prints error message to `stderr` stream if any, then
# exits program with code `1`
# Arguments:
#   Error message (optional)
# Outputs:
#   Error message, if any, on the `stderr` stream
# Dependency:
#   I/O library `io.sh` for `derror` function
#######################################
function ferror {
  if [[ "${#1}" -gt 0 ]]; then
    derror "${1}"
  fi
  exit 1
}
