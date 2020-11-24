# libsh

Personal Bash library

## Getting Started

| File         | Purpose                     |
|-------------:|:----------------------------|
| `err.sh`     | Error related functions     |
| `git.sh`     | Git related functions       |
| `io.sh`      | I/O related functions       |
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
. ${DIRLIB}/git.sh
. ${DIRLIB}/io.sh
. ${DIRLIB}/verbose.sh

# set verbosity constant, default 'false'
VERBOSE='true'
readonly VERBOSE

# use library functions
msg='Hello, world!'
verbose_variable 'message' "${msg}"
branch=$(git_branch)
if [[ "${#branch}" -gt 0 ]]; then
	verbose_variable 'branch' "${branch}"
else
	ferror "Unable to read git branch"
fi
echo "${msg}"
```

```txt
message: "Hello, world!"
branch: "feature/add-git-library"
Hello, world!
```
