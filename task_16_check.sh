#!/bin/bash

#######################################
##
##        /bin/ls command test
##
######################################

echo ============ /bin/ls ==============
command="ls && ls"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "ls && ls : OK"
else
    echo "ls && ls : ERROR"
fi




command="ls || ls"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "ls || ls : OK"
else
    echo "ls || ls : ERROR"
fi




command="ls&& ls"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "ls&& ls : OK"
else
    echo "ls&& ls : ERROR"
fi




command="ls|| ls"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "ls|| ls : OK"
else
    echo "ls|| ls : ERROR"
fi



command="ls && bonjour && ls"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "ls && bonjour && ls : OK"
else
    echo "ls && bonjour && ls : ERROR"
fi




command="ls || bonjour || ls"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "ls || bonjour || ls : OK"
else
    echo "ls || bonjour || ls : ERROR"
fi




command="ls || bonjour && ls && bonjour || ls"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "ls || bonjour && ls && bonjour || ls : OK"
else
    echo "ls || bonjour && ls && bonjour || ls : ERROR"
fi



command="ls ||bonjour&&ls                && bonjour                          || ls"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "ls ||bonjour&&ls                && bonjour                          || ls : OK"
else
    echo "ls ||bonjour&&ls                && bonjour                          || ls : ERROR"
fi




command="&& ls"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "&& ls : OK"
else
    echo "&& ls : ERROR"
fi




command="|| ls"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "|| ls : OK"
else
    echo "|| ls : ERROR"
fi




command="ls &&"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "ls && : OK"
else
    echo "ls && : ERROR"
fi




command="ls ||"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "ls || : OK"
else
    echo "ls || : ERROR"
fi




command="ls &&|| ls"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "ls &&|| ls : OK"
else
    echo "ls &&|| ls : ERROR"
fi




command="ls -al /tmp || ls"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "ls -al /tmp || ls : OK"
else
    echo "ls -al /tmp || ls : ERROR"
fi




command="ls -al /tmp && ls"

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "ls -al /tmp && ls : OK"
else
    echo "ls -al /tmp && ls : ERROR"
fi






command="       ls && ls  -l  -a     || vvbjrir   || ls &&     bgyf  ls  &&      ls        ||        fogj     "

rm -f hsh_check.txt sh_check.txt
touch hsh_check.txt sh_check.txt

echo -e "$command" | $SHELL > hsh_check.txt 2> /dev/null &
echo -e "$command" | sh > sh_check.txt 2> /dev/null &

sleep 1

if cmp -s "hsh_check.txt" "sh_check.txt"
then
    echo "       ls && ls  -l  -a     || vvbjrir   || ls &&     bgyf  ls  &&      ls        ||        fogj      : OK"
else
    echo "       ls && ls  -l  -a     || vvbjrir   || ls &&     bgyf  ls  &&      ls        ||        fogj      : ERROR"
fi

rm -f hsh_check.txt sh_check.txt
echo ============ end ==============