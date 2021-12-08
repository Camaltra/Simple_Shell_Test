#!/bin/bash

#######################################
##
##        /bin/ls command test
##
######################################

echo ============ /bin/ls ==============
command="echo $?"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "echo \$? : OK"
else
    echo "echo \$? : ERROR"
fi




command="echo tretre$?tre"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "echo tretre\$?tre : OK"
else
    echo "echo tretre\$?tre : ERROR"
fi




command="echo $$"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "echo \$$ : OK"
else
    echo "echo \$$ : ERROR"
fi




command="echo tretre$$tre"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "echo tretre\$$tre : OK"
else
    echo "echo tretre\$$tre : ERROR"
fi





command="echo $ ?"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "echo \$ ? : OK"
else
    echo "echo \$ ? : ERROR"
fi



command="echo $ $"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "echo \$ $ : OK"
else
    echo "echo \$ $ : ERROR"
fi


rm -f hsh_check.txt sh_check.txt
echo ============ end ==============