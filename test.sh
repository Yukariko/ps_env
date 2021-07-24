#!/bin/bash

make > /dev/null
[ $? -eq 0 ] || exit 1

while read line
do
    echo "$line" >> tmp.txt
    if [ "$line" = "" ]; then
        ./test < tmp.txt
        echo "--------"
        rm tmp.txt
    fi
done < input.txt

[ -e tmp.txt ] && ( ./test < tmp.txt ; rm tmp.txt ; echo "--------" )
