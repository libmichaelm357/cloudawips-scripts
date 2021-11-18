#!/bin/bash

echo "Please wait, attempting to begin the CloudAWIPS installation."
echo " "
echo "********** WARNING! **********"
echo "This installation script has been tested to function on"
echo "CentOS 7. While earlier/later versions may work, we highly"
echo "recommend using CentOS 7 only."
echo "********** WARNING! **********"
echo " "

sleep 3

echo "Beginning the Docker Installation/Update..."
sudo service docker stop
sudo yum install docker
