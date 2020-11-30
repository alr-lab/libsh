#!/bin/bash
#
# YAML Bash library
# SPDX-License-Identifier: AGPL-3.0-or-later
# (c) 2020, Alexandre Le Roy <ale-roy@student.42.fr>
# https://github.com/alr-lab/libsh/

#######################################
# Verify if the current session can use YAML
# features, and if not, returns failing code `1`
#######################################
function can_yaml {
  if ! hash yq 2> /dev/null; then
    return 1
  fi
}

#######################################
# Get YAML value for the variable passed as an
# argument or return failing code `1` if an issue
# occured
# Arguments:
#   Variable to get
#   File to parse
#######################################
function get_yaml_value {
  if ! val=$(yq r "${2}" "${1}" 2> /dev/null) \
    || [[ "${#val}" -eq 0 ]]; then
    return 1
  fi
  echo "${val}"
}
