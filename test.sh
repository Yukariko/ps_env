#!/bin/bash

make 2> output.txt
[ $? -eq 0 ] || exit 1

echo -n "" > output.txt
while read line
do
    echo "$line" >> tmp.txt
    if [ "$line" = "" ]; then
        echo "do test..."
        ./test < tmp.txt >> output.txt
        echo "--------" >> output.txt
        rm tmp.txt
    fi
done < input.txt

[ -e tmp.txt ] && ( ./test < tmp.txt >> output.txt; rm tmp.txt ; echo "--------" >> output.txt)
