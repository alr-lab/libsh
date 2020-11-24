# libsh

Personal Bash library

## Getting Started

| File         | Purpose                     |
|-------------:|-----------------------------|
| `io.sh`      | I/O related functions       |
| `err.sh`     | Error related functions     |
| `verbose.sh` | Verbosity related functions |

## Usage

```console
#!/bin/bash
#
#######################################
# Simple bash script to demonstrate libsh
#######################################
# Personal Bash library
# Copyright (C) 2020 Alexandre Le Roy
# 
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

DIRLIB='./lib'
readonly DIRLIB

# import library
. ./${DIRLIB}/err.sh
. ./${DIRLIB}/io.sh
. ./${DIRLIB}/verbose.sh

VERBOSE='true'
readonly VERBOSE

msg='Hello, world!'

# use library functions
verbose_variable 'message' "${msg}"
ferror "An issue occured"
```

```txt
message: Hello, world!
[2020-11-24T15:45:58+0100]: An issue occured
```
