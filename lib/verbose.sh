#!/bin/bash
#
# Verbose Bash library
# SPDX-License-Identifier: AGPL-3.0-or-later
# (c) 2020, Alexandre Le Roy <ale-roy@student.42.fr>
# https://github.com/alr-lab/libsh/

VERBOSE='false'

#######################################
# Prints the variable name and value passed as argument
# if the `${VERBOSE}` constant is set to 'true'
# Arguments:
#   Variable name to print if verbose
#   Variable value to print if verbose
# Outputs:
#   Variable name and value if verbose
#######################################
function verbose_variable {
  verbose "${1}: \"${2}\""
}

#######################################
# Prints the message passed as argument if the
# `${VERBOSE}` constant is set to 'true'
# Arguments:
#   Message to print if verbose
# Outputs:
#   Message if verbose
#######################################
function verbose {
  if [[ "${VERBOSE}" == 'true' ]]; then
    echo "${1}"
  fi
}
