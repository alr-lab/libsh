#!/bin/bash
#
# I/O Bash library
# SPDX-License-Identifier: AGPL-3.0-or-later
# (c) 2020, Alexandre Le Roy <ale-roy@student.42.fr>
# https://github.com/alr-lab/libsh/

#######################################
# Prints error message to `stderr` stream
# Arguments:
#   Error message
# Outputs:
#   Error message on the `stderr` stream
#######################################
function derror {
  >&2 echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: ${1}"
}
