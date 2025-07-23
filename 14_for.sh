#!/bin/bash
MYUSER="alpha beta gamma"

for usr in $MYUSER
do
        echo "Adding User $usr"
        useradd $usr
        id $usr
        date
        sleep 1
        echo "##################"
done
