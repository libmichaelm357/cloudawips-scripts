#!/bin/bash

echo "--- Starting CloudAWIPS ---"
echo "Please be patient as this may take a moment."
echo "--- Starting CloudAWIPS ---"

sudo docker run -p 6080:6080 -it unidata/cloudawips
