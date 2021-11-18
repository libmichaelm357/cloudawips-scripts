#!/bin/bash

echo "Please wait, attempting to begin the CloudAWIPS installation."
echo " "
echo "********** WARNING! **********"
echo "This installation script has been tested to function on"
echo "CentOS 7. While earlier/later versions may work, we highly"
echo "recommend using CentOS 7 only."
echo "********** WARNING! **********"
echo " "

sleep 3 # Pause before installation process

echo "Beginning the Docker Installation/Update..."
sudo service docker stop
sudo yum install docker # Install Docker if not installed already
sudo yum update docker # Update Docker if already installed
sudo service docker start
echo "Now attempting to print Docker Version Info..."
sudo docker version
echo " "

sleep 3 # Pause before docker pull

echo "-- The installer will now begin pulling the latest CloudAWIPS image. --"
echo "A high-speed network connection is recommended as a slow-speed connection"
echo "could result in download times of 3 hours or more. You will have 30 seconds"
echo "to switch to a high-speed connection before the download starts."
echo "-- The installer will now begin pulling the latest CloudAWIPS image. --"
echo " "
sleep 10
echo "*** 20 SECONDS REMAINING TO SWITCH TO HIGH-SPEED NETWORK BEFORE DOWNLOAD ***"
sleep 10
echo "*** 10 SECONDS REMAINING TO SWITCH TO HIGH-SPEED NETWORK BEFORE DOWNLOAD ***"
sleep 10
echo " "
echo "--- Begin pulling of latest CloudAWIPS Image from Docker Hub ---"
echo "The system will now begin pulling the latest CloudAWIPS Image from Docker."
echo "Interrupting this process could result in data loss. Please note that you"
echo "may experience download times of upwards of 1-3+ hours depending on your"
echo "network speed."
echo "--- Begin pulling of latest CloudAWIPS Image from Docker Hub ---"
sleep 3
sudo docker pull unidata/cloudawips

sleep 3 # Pause before running the container

echo "--- The installer has successfully pulled the latest CloudAWIPS Image. ---"
echo "The latest CloudAWIPS image was successfully pulled from Docker Hub. Now"
echo "attempting to start the container with default settings. A shell script"
echo "will be saved to your home directory for easy startup of the container."
echo " "
echo "To access CloudAWIPS, please navigate to localhost:6080 -- you should be"
echo "presented with a CAVE environment and not much else. The window manager"
echo "doesn't have any desktop."
echo "--- The installer has successfully pulled the latest CloudAWIPS Image. ---"
wget -O startcloudawips.sh # CREATE THE STARTUP SCRIPT AND LINK HERE!
docker run -p 6080:6080 -it unidata/cloudawips
