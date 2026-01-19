#!/bin/sh
# Author: Hyounjun Chang

if [ $# -lt 2 ]; then
    echo "usage: ./finder.sh filesdir searchstr" >&2
    exit 1
fi
filesdir=$1
searchstr=$2

if [ ! -d $filesdir ]; then
    echo "Not a valid directory" >&2
    exit 1
fi

# get number of files
file_count=$(find $filesdir -type f | wc -l)
# get number of matches
line_match=$(grep -r $searchstr $filesdir | wc -l)

echo "The number of files are $file_count and the number of matching lines are $line_match"
exit 0