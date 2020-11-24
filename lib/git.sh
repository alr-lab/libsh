#!/bin/bash
#
#######################################
# Git Bash library
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
# Prints the current Git branch
# Outputs:
#   Current Git branch, nothing if not in Git
#   repository
#######################################
function git_branch {
	git rev-parse --abbrev-ref HEAD 2> /dev/null
}
