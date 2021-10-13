#!/bin/bash

function do_test() {
    echo "do test..."
    { ./test < tmp.txt; } >> output.txt 2>&1
    echo "--------" >> output.txt
    rm tmp.txt
}

rustc test.rs --edition 2018 -O -o test 2> output.txt
[ $? -eq 0 ] || exit 1

echo -n "" > output.txt
echo -n "" > tmp.txt
while read line
do
    echo "$line" >> tmp.txt
    if [ "$line" = "" ]; then
        do_test
    fi
done < input.txt

[ -e tmp.txt ] && do_test
