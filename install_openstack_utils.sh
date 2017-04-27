#!/bin/bash

set -e
set -x

function apt_get() {
  apt-get -y --force-yes --no-install-recommends "$@"
}

packages="
python-openstackclient 
pytz 
python-neutronclient
"

apt-get update
apt-get upgrade -y
apt_get install $packages
apt-get clean 


rm -rf /usr/share/doc/* /usr/share/man/* /usr/share/groff/* /usr/share/info/*
