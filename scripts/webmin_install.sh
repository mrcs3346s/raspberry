#!/bin/bash

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install libnet-ssleay-perl
sudo apt-get install libauthen-pam-perl
sudo apt-get install libio-pty-perl
sudo apt-get install apt-show-versions

sudo wget http://downloads.sourceforge.net/project/webadmin/webmin/1.610/webmin_1.610_all.deb
sudo dpkg --install webmin_1.610_all.deb

#https://<ip_do_raspberry>:10000