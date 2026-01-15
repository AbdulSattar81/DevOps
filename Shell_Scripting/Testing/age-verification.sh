#!/bin/bash

echo -e "This is my 1st task on arguments.\n"

age_verification() {

local name=$1
local age

read -p "please enter age for $name: " age

echo
echo -e "$name's age is $age, Let's see if you are eligible or not. 🤨 \n"

if [[ $age -ge 18 && $age -le 30 ]]; then
        echo -e "$name, Congragulations You are Eligible.\n"
else
        echo " You are NOT ELIGIBLE"
fi
}

read -p "Please Enter Your name: " primary_name
age_verification "$primary_name"

#Age verification for each person

if (( $# > 0 )); then
        echo -e "Checking the invitation list...\n"

        for arguments in "$@"; do
                age_verification "$arguments"
        done

else
        echo "No additional names provided in the command line."
fi
