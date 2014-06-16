#!/bin/bash
. ../../ferret.vars

$CXX $1 -I ../source $DEBUGFLAGS -g -DDEBUG_LEVEL=2 -Wall -Wextra -std=gnu++11  -o $1.exe && $VALGRIND ./$1.exe && rm -r $1.exe*
