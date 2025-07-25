#!/bin/sh
# Author : Daniel-BHG

filesdir=$1
searchstr=$2

if [ $# -lt 2 ]; then
	echo "[Error] Need to input two parameters"
	echo "Usage : $0 <filesdir> <searchstr>"
	exit 1
fi

if [ ! -d "$filesdir" ]; then
	echo "$filesdir is not a directory"
	exit 1
fi

search_cnt=$(find $filesdir -type f -exec grep -H $searchstr {} \; | wc -l)
file_cnt=$(find $filesdir -type f | wc -l)

echo "The number of files are $file_cnt and the number of matching lines are $search_cnt"
