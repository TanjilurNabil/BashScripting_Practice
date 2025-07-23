#!/bin/bash
counter=2
# It is an infinite loop that will never terminate because of while true 
while true
do
    echo "Looping..."
    echo "Value of counter is $counter."
    counter=$(( $counter * 2 ))
    sleep 1
done
echo "Out of the loop"