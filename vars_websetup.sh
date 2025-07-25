#!/bin/bash

#Variables Declaration
PACKAGE="wget httpd unzip"
SVC="httpd"
URL="https://www.tooplate.com/zip-templates/2098_health.zip"
ART_NAME="2098_health"
TEMPDIR="/tmp/webfiles"

### Web Setup Script ###
#Installing Packages
echo "########################################################"
echo "Installing Dependancy"
echo "########################################################"
sudo yum install $PACKAGE -y > /dev/null
echo

#Start and Enable httpd
echo "########################################################"
echo "Enabling httpd"
echo "########################################################"
sudo systemctl start $SVC
sudo systemctl enable $SVC
echo




#Creating temp directory
echo "#######################################################"
echo "Starting artifact deployment"
echo "#######################################################"
mkdir -p $TEMPDIR
cd $TEMPDIR
echo

wget $URL > /dev/null
unzip $ART_NAME.zip > /dev/null
sudo cp -r $ART_NAME/* /var/www/html/

#Bounce Service
echo "######################################################"
echo "Restarting httpd"
echo "######################################################"
sudo systemctl restart $SVC
echo


#Clean up
echo "######################################################"
echo "System Cleanup"
echo "######################################################"
rm -rf $TEMPDIR
echo

systemctl status $SVC

ls /var/www/html
