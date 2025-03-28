#!/bin/bash
output=`sudo docker ps|awk '{print $1}'|tail -1`
if [ -z "$output" ]; then
    echo "App is not running"
else
    echo "Killing the existing App .."
    sudo docker kill ${output}
fi
echo "Starting the App .."
sudo docker run -p 8080:8080 -d anbanerj11/nodejsapp
