# libsh

Personal Bash library

## Getting Started

| File         | Purpose                     |
|-------------:|:----------------------------|
| `io.sh`      | I/O related functions       |
| `err.sh`     | Error related functions     |
| `verbose.sh` | Verbosity related functions |

## Usage

```console
#!/bin/bash
#
# Simple bash script to demonstrate libsh

# import library
DIRLIB='./lib'
readonly DIRLIB
. ${DIRLIB}/err.sh
. ${DIRLIB}/io.sh
. ${DIRLIB}/verbose.sh

# set verbosity constant
VERBOSE='true'
readonly VERBOSE

# use library functions
msg='Hello, world!'
verbose_variable 'message' "${msg}"
ferror "An issue occured"
```

```txt
message: Hello, world!
[2020-11-24T15:45:58+0100]: An issue occured
```
