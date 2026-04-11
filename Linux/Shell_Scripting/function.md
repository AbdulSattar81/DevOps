#!/bin/bash

age=27
residency=USA
designation=SRE/DevOps_Engineer

function details() {
    # Check if argument exists
    if [ "$#" -eq 0 ]; then
        read -p "Please provide name: " NAME
    else
        NAME="$1"
    fi

echo "Name: $NAME"
echo "Age: $age"
echo "Works as a $designation, resides in $residency"
echo "TimeStamp: $(date +"%m-%d-%Y %H:%M:%S")"
}

details "$@"
