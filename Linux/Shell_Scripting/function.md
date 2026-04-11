#!/bin/bash

age=27
residency=USA
designation=SRE/DevOps_Engineer

function details() {

if [ "$#" -eq 0 ]; then
        read -p "Please provide name: " NAME
        echo "Name: $NAME"
        echo "Age: $age"
        echo "Works as a $designation , resides in $residency"
fi

echo "TimeStamp: $(date +"%m-%d-%Y %H:%M:%S")"

}

details
