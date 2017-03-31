#!/bin/bash
JACKRABBIT_URL="http://www-eu.apache.org/dist/jackrabbit/2.14.0/jackrabbit-standalone-2.14.0.jar"
JACKRABBIT_SHA="fa65819e4a22940154e3db9198ad630f0c39f6ad"
echo Welcome to Jackrabbit Installer

cd /app
wget $JACKRABBIT_URL -O jackrabbit-standalone.jar #Download Jackrabbit
DOWNLOAD_SHA=`sha1sum /app/jackrabbit-standalone.jar  | cut -d" " -f1` # Get download hash

if [ $JACKRABBIT_SHA != $DOWNLOAD_SHA ]; then
    echo The downloaded jackrabbit version has a wrong SHA hash
    echo Expected SHA = $JACKRABBIT_SHA
    echo SHA of download = $DOWNLOAD_SHA
    exit 1
fi

mkdir /app/jackrabbit

echo Jackrabbit successfully installed
exit 0
