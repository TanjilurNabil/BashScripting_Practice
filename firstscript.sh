#!/bin/bash

### This script prints system info ###
echo "Welcome to Bash Script"
echo

#Checking System Uptime
echo "#############################################"
echo "The uptime of the System is"
uptime
echo
#Memory Utilization
echo "############################################"
echo "Memory Management"
free -m
echo

# Disk Utilization
echo "###########################################"
echo "Disk Management"

df -h
echo
