#!/bin/bash
#
# Git Bash library
# SPDX-License-Identifier: AGPL-3.0-or-later
# (c) 2020, Alexandre Le Roy <ale-roy@student.42.fr>
# https://github.com/alr-lab/libsh/

#######################################
# Prints the current Git branch
# Outputs:
#   Current Git branch, nothing if not in Git
#   repository
#######################################
function git_branch {
	git rev-parse --abbrev-ref HEAD 2> /dev/null
}
