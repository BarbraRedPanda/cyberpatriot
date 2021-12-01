#!/bin/sh

#----------------------------------------
#   BarbraRedPanda
#   2021 Cyberpatriot Ubuntu Script
#----------------------------------------

mkdir /home/logs

#----------------
#   Firewall
#----------------
sudo apt install gufw
gufw


#----------------
#   Antivirus
#----------------
touch clamlog.txt /home/logs/
sudo apt install clamav -y
echo clamscan --infected --detect-pua=yes --recursive --verbose >> 

# upgrade firefox