#!/bin/bash
echo "############################################"
date
#ls /var/run/httpd/httpd.pid &> /dev/null
# here we are checking if the .pid file exists or not
# because this file only exists when the process is running
if [ -f /var/run/httpd/httpd.pid ]
then
        echo "Httpd process is running"
else
        echo "Httpd process is NOT running"
        echo "Starting the process"
        systemctl start httpd
        if [ $? -eq 0 ]
        then
                echo "Process Started successfully"
        else
                echo "Process staring failed, contact the admin"
        fi
fi
echo "###############################################"
echo