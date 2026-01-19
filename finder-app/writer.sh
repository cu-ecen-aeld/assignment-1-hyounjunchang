#!/bin/sh
# Author: Hyounjun Chang

if [ $# -lt 2 ]; then
    echo "usage: ./writer.sh writefile writestr" >&2
    exit 1
fi
writefile=$1
writestr=$2

# create a new file (since we overwrite, it doesn't matter if we erase)
install -Dv /dev/null $writefile
if [ $? -ne 0 ]; then
    echo "Error writing to file" >&2
    exit 1
fi
    
echo $writestr > $writefile
if [ $? -ne 0 ]; then
    echo "Error writing to file" >&2
    exit 1
fi

exit 0