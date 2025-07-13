#!/bin/bash

echo "###########################################################"
read -p "Enter a number: " NUM
echo

if [ $NUM -gt 100 ]
then
        echo "We have entered IF Block"
        sleep 3
        echo "Your Number is greater than 100"
        echo
        date
fi

echo "Script execution completed successfully"