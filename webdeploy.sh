#!/bin/bash
# For this we have to make a file first where remotehosts will be included.Like web01,web02..
USR='devops'

for host in `cat remotehosts`
do
        echo "#######################################"
        echo "Connecting to $host"
        echo "Publishing Script to $host"
        scp multios_websetup.sh $USR@$host:/tmp/
        echo "Executing Script on $host"
        ssh $USR@$host sudo /tmp/multios_websetup.sh
        ssh $USR@$host sudo rm -rf /tmp/multios_websetup.sh
        echo "######################################"
        echo
done