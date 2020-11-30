#!/bin/bash
#
# JSON Bash library
# SPDX-License-Identifier: AGPL-3.0-or-later
# (c) 2020, Alexandre Le Roy <ale-roy@student.42.fr>
# https://github.com/alr-lab/libsh/

#######################################
# Verify if the current session can use JSON
# features, and if not, returns failing code `1`
#######################################
function can_json {
  if ! hash jq 2> /dev/null; then
    return 1
  fi
}

#######################################
# Get JSON value for the variable passed as an
# argument or return failing code `1` if an issue
# occured
# Arguments:
#   Variable to get
#   File to parse
#######################################
function get_json_value {
  if ! val=$(jq ".${1}" "${2}" 2> /dev/null); then
    return 1
  fi
  sed -e 's/^"//' -e 's/"$//' <<< "${val}"
}
