#!/bin/sh


    echo "#&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&(((((((((("
    echo "#&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&(((((((((("
    echo "#&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&(((((((((("
    echo "&&&&&&&&&&&&&&&&&&&&@&&&&@&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&(((((((((("
    echo "&&&&&&&&&&&&&&&&&&&&&&&&&@&&&&&((#( ..*((/,,/#((/#&&&&&&&&&&&&&&&&&&&&(((((((((("
    echo "/&&&&&&&&&&&&&&&@@@@@&@@@@@&((#*...    .,,,*///,   ((&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    echo "(&&&&&&&&&&&@@@@@@@@@@@@((/////.... .  *****////((/*/./#@&@&&&&&&&&&&&&&&&&&&&&&"
    echo "/&&&&&&&&&@@@@@@@@@@&(&##&((&#(**.,... *,*////*/(((*&(#,./@&@&&&&&&&&&&&&&&&&&&&"
    echo "/&&&&&&@@@@@@@@@@@&& ##&&&&&&#//*,.*. .**(((((/(/(#//(*  ,/@&&@@@&&&&&&&&&&&&&&&"
    echo "/&@&@&@@@@@@@@@@@@# ...,.&&&&#//*,,*,,*/((##&&&&#**,**,,.,.(#&@&@@@&@&&&&&&&&&&&"
    echo ".&&&@&@@@@@@@@@@@&(.#&&&&&#//*#//*//**/((#&#*/&@@&&@@&&/&(/ ##  @@@@@@&&&&&&&&&&"
    echo "*&&&@&@@@@@@@@@@@&(./#/&&@@&&&@&(&#(**(#&(@@&@@&&&&&#//&&((,*##.@&@@@@&&&&&&&&&&"
    echo "/&&@@@@@@@@@@@@@###( ,*,*///*///&&@&((&@@@&#&##((////*.** ,/(.,.@@@@@@@@&&&&&&&&"
    echo "/&&&@&@@@@@@@@@@*/& .,*#((. ....***(/*/.,**,,.. ,*,..,/((,,&((  &@@@@@@&&&&&&&&&"
    echo "/&&&@&@@@@@@@@@@&* &@@.. . ...   .  &&&   .. . ....  .    .*/*#(@@@@@@@@&@&&&&&&"
    echo ",&&&@&&&@@@@@@@@&*. /&...  ....   .#@@@&. ..*  *. ...../##&/,*#@@@@@@@@@@@&&&&&&"
    echo "&&&&&&&@@@@@@@@@(,.,/&.  .. ......@@@@@. * ...,,.,.*&&&.*&(&/&@@@@@@@@@@@&&&&&&"
    echo "&&&&&&&&&@@@@@@@( (&.,#@@@@&&&#&##&@@@@#(#((&&#&&@#.,*(#&&&#@@@@@@@@@@@@&@&&&&&"
    echo "&&&&&&&&&@@@@@@@@.,&*(&(.. (&*//(&@@@@@@*(/(*/(..*&##&#/#&#&@@@@@@@@@@@@@@&&&&&"
    echo "&&&&&&&&&&&@@@@@@/./,//**/,*..*#.@@@@@@@**///((//**,**////@@@@@@@@@@@@@@@@&&&&&"
    echo "&&&&&&&&&&@&@@@@@@&@* .... ,,. . /#&&&&( ,//...*******. .@@@@@@@@@@@@@@@@@@&&&&"
    echo "&&&&&&&&&&&@&@@@@@@@@@ ..  .,..* ....  .*/(/**,**,/. . ..@&@@@@@@@@@@@@@@@&&&&&"
    echo "&&&&&&&&&&&&&@@@@@@@@&&    .. . . ....///*/,..,**,, . . &@@@@@@@@@@@@@@@@@@@&&&"
    echo "&&&&&&&&&&&&&@&@@@@@@@&&.  .     . .......    .*,,,... &&@@@@@@@@@@@@@@@&@@@&&&"
    echo "&&&&&&&&&&&&&&&@@@@@@@@@  . ..... ......  .....,,.  ..,&@@@@@@@@@@@@@@@@@@@&@&&"
    echo "&&&&&&&&&&&&&&&&&@@@@@@@* ...... ..  . ...  ,,.,,.   .*@@@@@@@@@@@@@@@@@&&&&&&&"
    echo "&&&&&&&&&&&&&&&&&@&&&@@@#. ... ..   ....   .....,. .. ,@@@@@@@@@@@@@@@@@&&&&&&&"
    echo "&&&&&&&&&&&&&&&&&&&&# ...  . ...     . ... . ....  . ..,&&@@@@@@&@@@@@&&&&&&&&&"
    echo "&&&&&&&&&&&&&&#,.. . .  .. ..,.. ..... . .. . . . ...   .    ..,*&@@&&&&&&&&&&&"
    echo "&&&&&&&&&/..   . .. .    .  .,,, .   .  .. ..  .. ....   ...  .,..... ./&&&&&&&"
    echo "&(. . . . .. .   .. .. . .......    .      . ...  ... .      ... .............*"
    echo ". ... .  ..  .   ... .    .  ...   .  .  . . .  ..     . .  ..,..,............."
    echo #-------------------------------------------------------------------------------#
    echo #-                     BarbraRedPanda CyberPatriot Script                      -#
    echo #-------------------------------------------------------------------------------#
    echo #-                            'We like fortnite'                               -#
    echo #-                     -Tyler 'Fortnite' 'Ninja' Blevins                       -#
    echo #-------------------------------------------------------------------------------#
    echo #       (0) password policy  (1) lockout policy  (2) audit (3) firewall         #
    echo #       (4) hidden folders   (5) remote console  (6) remote access              #
    echo #       (7) guest/admin      (8) telnet.         (9) search and destroy         #
    echo #-------------------------------------------------------------------------------#


#----------------------------------------
#   BarbraRedPanda
#   2021 Cyberpatriot Ubuntu Script
#----------------------------------------

#update
apt-get -V -y install firefox ufw clamav hardinfo chkrootkit iptables portsentry lynis gufw sysv-rc-conf nessus
apt-get -V -y install --reinstall coreutils
apt-get update
apt-get upgrade
apt-get dist-upgrade


#iptables from JoshuaTatum cyberpatriot repository
iptables -A INPUT -p tcp -s 0/0 -d 0/0 --dport 23 -j DROP         #Block Telnet
iptables -A INPUT -p tcp -s 0/0 -d 0/0 --dport 2049 -j DROP       #Block NFS
iptables -A INPUT -p udp -s 0/0 -d 0/0 --dport 2049 -j DROP       #Block NFS
iptables -A INPUT -p tcp -s 0/0 -d 0/0 --dport 6000:6009 -j DROP  #Block X-Windows
iptables -A INPUT -p tcp -s 0/0 -d 0/0 --dport 7100 -j DROP       #Block X-Windows font server
iptables -A INPUT -p tcp -s 0/0 -d 0/0 --dport 515 -j DROP        #Block printer port
iptables -A INPUT -p udp -s 0/0 -d 0/0 --dport 515 -j DROP        #Block printer port
iptables -A INPUT -p tcp -s 0/0 -d 0/0 --dport 111 -j DROP        #Block Sun rpc/NFS
iptables -A INPUT -p udp -s 0/0 -d 0/0 --dport 111 -j DROP        #Block Sun rpc/NFS
iptables -A INPUT -p all -s localhost  -i eth0 -j DROP            #Deny outside packets from internet which claim to be from your loopback interface.

#----------------
#delete unwanted files, from JoshuaTatum cyberpatriot repository
#----------------
find / -name '*.mp3' -type f -delete
find / -name '*.mov' -type f -delete
find / -name '*.mp4' -type f -delete
find / -name '*.avi' -type f -delete
find / -name '*.mpg' -type f -delete
find / -name '*.mpeg' -type f -delete
find / -name '*.flac' -type f -delete
find / -name '*.m4a' -type f -delete
find / -name '*.flv' -type f -delete
find / -name '*.ogg' -type f -delete
find /home -name '*.gif' -type f -delete
find /home -name '*.png' -type f -delete
find /home -name '*.jpg' -type f -delete
find /home -name '*.jpeg' -type f -delete

mkdir /home/logs

#----------------
#   Firewall
#----------------
ufw enable
ufw reject incoming
ufw allow outgoing


#----------------
#   Antivirus
#----------------
touch clamlog.txt /home/logs/
clamscan --infected --detect-pua=yes --recursive --verbose | tee clamlog.txt
