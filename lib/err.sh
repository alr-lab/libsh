#!/bin/bash
#
#######################################
# Error related Bash library
#######################################
# Personal Bash library
# Copyright (C) 2020 Alexandre Le Roy
# https://github.com/alr-lab/libsh
#######################################
# This program is free software: you can redistribute it
# and/or modify it under the terms of the GNU General Public
# License as published by the Free Software Foundation,
# either version 3 of the License, or (at your option) any
# later version.
# 
# This program is distributed in the hope that it will be
# useful, but WITHOUT ANY WARRANTY; without even the implied
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
# PURPOSE. See the GNU General Public License for more
# details.
# 
# You should have received a copy of the GNU General Public
# License along with this program. If not, see
# <https://www.gnu.org/licenses/>.
#######################################

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
