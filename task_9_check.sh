#!/bin/bash


#put the file in your shell directory, or copy for tmp all your .c file in this directory
echo "============ getline =============="
touch test1
touch test2
grep "getline" *.c > test1

sleep 1


if cmp -s "test1" "test2"
then
    echo "OK"
else
    echo "ERROR"
fi
echo ============ end ==============
