#!/usr/bin/env bash
#
# try.alt.sh - demonstrate IOCCC submission YYYY/foo alternate code
# XXX - try.alt.sh example version: 28.0.0-0 2024-03-04                     - XXX
# XXX - NOTE: if your submission wins and becomes an entry, then            - XXX
# XXX - YYYY/foo will be changed to the 4 digit year and directory          - XXX
# XXX - name.                                                               - XXX
# XXX - NOTE: please remove the XXX lines in this file, including this one  - XXX

# make sure CC is set so that when we do make CC="$CC" it isn't empty. Doing it
# this way allows us to have the user specify a different compiler in an easy
# way.
# XXX - if you need CC to be something else for some reason, say clang,     - XXX
# XXX - then change "cc" to that or whatever you need.                      - XXX
# XXX - If you need other variables you can also set them in whatever way   - XXX
# XXX - you need; this is a good method, however, in cases where it's OK    - XXX
# XXX - to let the user redefine it.                                        - XXX
[[ -z "$CC" ]] && CC="cc"

# XXX - make sure to compile the alt code, using make alt!                  - XXX
# XXX - if you need to build the main program for the try.alt.sh script,    - XXX
# XXX - then change the 'alt' to 'all alt' in the below command.            - XXX
# XXX - Later, if the submission wins, it can be changed to 'everything'.   - XXX
make CC="$CC" alt >/dev/null || exit 1

# XXX - it's usually a good idea to clear the screen but if not done        - XXX
# XXX - then you should remove the comment about it and the command.        - XXX
# clear screen after compilation so that only the entry is shown
clear

# XXX - Invoke the program in one or more ways                      - XXX

# XXX - NOTE: you can include more than one command line and you    - XXX
# XXX - certainly can include pipelines.                            - XXX

# XXX - It is good to use the shell built-in read(1) to             - XXX
# XXX - let the user know what is about to be done, as              - XXX
# XXX - shown below, so they can proceed when ready.                - XXX

# XXX - You may modify the command based on your program and you    - XXX
# XXX - may provide more than one invocation.                       - XXX

# XXX - Examples follow.                                            - XXX

# XXX - if the prompt will not be too long, say no more than 80-100 - XXX
# XXX - chars or so:                                                - XXX
read -r -n 1 -p "Press any key to run: ./prog.alt: "
echo 1>&2
./prog.alt

# XXX - Otherwise, for longer command lines, you might try:         - XXX
echo "$ ./prog.alt some long command line"
read -r -n 1 -p "Press any key to continue: "
./prog.alt some long command line

# XXX - of course, if the prompt needs to be long, or it will be    - XXX
# XXX - longer no matter what or you have some other purpose, you   - XXX
# XXX - can do it the other way or another way entirely. The point  - XXX
# XXX - is to make it easy to use and see but still fit your ideas. - XXX
