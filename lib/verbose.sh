#!/bin/bash
#
#######################################
# Verbose Bash library
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
