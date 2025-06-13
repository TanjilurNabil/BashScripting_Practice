#!/bin/bash

### Web Setup Script ###
#Installing Packages
echo "########################################################"
echo "Installing Dependancy"
echo "########################################################"
sudo yum install wget httpd unzip -y > /dev/null
echo

#Start and Enable httpd
echo "########################################################"
echo "Enabling httpd"
echo "########################################################"
sudo systemctl start httpd
sudo systemctl enable httpd
echo




#Creating temp directory
echo "#######################################################"
echo "Starting artifact deployment"
echo "#######################################################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

wget https://www.tooplate.com/zip-templates/2098_health.zip > /dev/null
unzip 2098_health.zip > /dev/null
sudo cp -r 2098_health/* /var/www/html/

#Bounce Service
echo "######################################################"
echo "Restarting httpd"
echo "######################################################"
sudo systemctl restart httpd
echo


#Clean up
echo "######################################################"
echo "System Cleanup"
echo "######################################################"
rm -rf /tmp/webfiles
echo

systemctl status httpd

ls /var/www/html
