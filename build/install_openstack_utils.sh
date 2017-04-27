#!/bin/bash

set -e
set -x

function apt_get() {
  apt-get -y --force-yes --no-install-recommends "$@"
}


apt-get update
apt-get upgrade -y
apt_get install python-pip python3-dev python-dev
apt-get clean

pip install python-openstackclient pytz python-neutronclient

rm -rf /usr/share/doc/* /usr/share/man/* /usr/share/groff/* /usr/share/info/*
