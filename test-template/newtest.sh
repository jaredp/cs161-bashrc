#!/bin/bash

TEMPLATES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ~/cs161/os161/userland/testbin/

TESTNAME=$1
mkdir $TESTNAME || exit
sed "s/<testname>/$TESTNAME/g" $TEMPLATES/test.c.template > "$TESTNAME/$TESTNAME.c"
sed "s/<testname>/$TESTNAME/g" $TEMPLATES/Makefile.template > "$TESTNAME/Makefile"

# Update makefile
echo "$TESTNAME \\" >> tests.mk
