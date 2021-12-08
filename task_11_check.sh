#!/bin/bash

#######################################
##
##        exit return value 98
##
######################################

echo "============ exit return value 98=============="
command="exit 98"

rm -f hsh_check sh_check
touch hsh_check sh_check

echo -e "$command" | $SHELL > /dev/null 2> /dev/null
echo $? > hsh_check
echo -e "$command" | sh > /dev/null 2> /dev/null
echo $? > sh_check

sleep 1


if cmp -s "hsh_check" "sh_check"
then
    echo "OK"
else
    echo "ERROR"
fi

rm -f hsh_check sh_check
echo ============ end ==============

echo -e "\n"

#######################################
##
##        exit return value -1
##
######################################

echo "============ exit return value -1=============="
command="exit -1"

rm -f hsh_check sh_check
touch hsh_check sh_check

echo -e "$command" | $SHELL > /dev/null 2> /dev/null
echo $? > hsh_check
echo -e "$command" | sh > /dev/null 2> /dev/null
echo $? > sh_check

sleep 1


if cmp -s "hsh_check" "sh_check"
then
    echo "OK"
else
    echo "ERROR"
fi

rm -f hsh_check sh_check
echo ============ end ==============


echo -e "\n"

#######################################
##
##        exit return value 2,147,483,647
##
######################################

echo "============ exit return value 2,147,483,647=============="
command="exit 2147483647"

rm -f hsh_check sh_check
touch hsh_check sh_check

echo -e "$command" | $SHELL > /dev/null 2> /dev/null
echo $? > hsh_check
echo -e "$command" | sh > /dev/null 2> /dev/null
echo $? > sh_check

sleep 1


if cmp -s "hsh_check" "sh_check"
then
    echo "OK"
else
    echo "ERROR"
fi

rm -f hsh_check sh_check
echo ============ end ==============

echo -e "\n"

#######################################
##
##        exit return value -2147483647
##
######################################

echo "============ exit return value -2,147,483,647=============="
command="exit -2147483647"

rm -f hsh_check sh_check
touch hsh_check sh_check

echo -e "$command" | $SHELL > /dev/null 2> /dev/null
echo $? > hsh_check
echo -e "$command" | sh > /dev/null 2> /dev/null
echo $? > sh_check

sleep 1


if cmp -s "hsh_check" "sh_check"
then
    echo "OK"
else
    echo "ERROR"
fi

rm -f hsh_check sh_check
echo ============ end ==============

echo -e "\n"

#######################################
##
##        exit return value 8746473267467238647326
##
######################################

echo "============ exit return value 8746473267467238647326=============="
command="exit 8746473267467238647326"

rm -f hsh_check sh_check
touch hsh_check sh_check

echo -e "$command" | $SHELL > /dev/null 2> /dev/null
echo $? > hsh_check
echo -e "$command" | sh > /dev/null 2> /dev/null
echo $? > sh_check

sleep 1


if cmp -s "hsh_check" "sh_check"
then
    echo "OK"
else
    echo "ERROR"
fi

rm -f hsh_check sh_check
echo ============ end ==============

echo -e "\n"

#######################################
##
##        exit return value -8746473267467238647326
##
######################################

echo "============ exit return value -8746473267467238647326=============="
command="exit -8746473267467238647326"

rm -f hsh_check sh_check
touch hsh_check sh_check

echo -e "$command" | $SHELL > /dev/null 2> /dev/null
echo $? > hsh_check
echo -e "$command" | sh > /dev/null 2> /dev/null
echo $? > sh_check

sleep 1


if cmp -s "hsh_check" "sh_check"
then
    echo "OK"
else
    echo "ERROR"
fi

rm -f hsh_check sh_check
echo ============ end ==============

