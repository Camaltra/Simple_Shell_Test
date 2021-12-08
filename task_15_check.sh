#!/bin/bash

#######################################
##
##        /bin/ls command test
##
######################################

echo ============ /bin/ls ==============
command="ls ; ls"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "ls ; ls : OK"
else
    echo "ls ; ls : ERROR"
fi




command="; ls"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "; ls : OK"
else
    echo "; ls : ERROR"
fi





command="ls ;"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "ls ; : OK"
else
    echo "ls ; : ERROR"
fi




command="   ;"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "   ; : OK"
else
    echo "   ; : ERROR"
fi




command="ls ; ls ; ls"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "ls ; ls ; ls : OK"
else
    echo "ls ; ls ; ls : ERROR"
fi




command="ls;;ls"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "ls;;ls : OK"
else
    echo "ls;;ls : ERROR"
fi




command="ls;;ls"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null
echo $? > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null
echo $? > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "ls;;ls : OK"
else
    echo "ls;;ls : ERROR"
fi




command="ls ;ls"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "ls ;ls : OK"
else
    echo "ls ;ls : ERROR"
fi

rm -f hsh_check.txt sh_check.txt
echo ============ end ==============