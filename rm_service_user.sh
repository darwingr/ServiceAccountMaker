#!/bin/bash

if (( $(id -u) )) ; then
    echo "This script needs to run as root"
    exit 1
fi

username=$1
realname="${2:-$username}"

sudo dscl /Local/Default -delete Users/_$username
sudo dscl /Local/Default -delete Groups/_$username
echo -e "\nThe user's home folder will not be automatically deleted, find it here:\n"
echo -e "  /usr/local/$username\n"
echo -e "To delete it run:\n"
echo -e "rm -rf /usr/local/$username\n"