goto :main

#----------------------------------------
#   BarbraRedPanda
#   2022 Cyberpatriot Windows 10 Script
#   https://github.com/BarbraRedPanda/cyberpatriot/
#----------------------------------------

:main
@echo off
color 08

rem checks if there are sufficient privs 
net session
if %errorlevel%==0 (
 	echo "We're in. hacking itno mainframe. initiansting fortniteburger."
) else (
    echo "you suck"
 	pause
    exit
)

cls

set /p forensics=have you read the readme and the forensics (y/n)?
if "%forensics%"=="y" goto :launch
if "%forensics%"=="n" (
    echo "do them now"
    pause
    exit
)

:launch
    cls
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
    echo "#-----------------------------------------------------------------------------#"
    echo "#                     BarbraRedPanda CyberPatriot Script                      #"
    echo "#-----------------------------------------------------------------------------#"
    echo "#                            'We like fortnite'                               #"
    echo "#                     -Tyler 'Fortnite' 'Ninja' Blevins                       #"
    echo "#-----------------------------------------------------------------------------#"
    echo "#      (0) password policy  (1) lockout policy  (2) audit (3) firewall        #"
    echo "#      (4) hidden folders   (5) remote console  (6) remote access             #"
    echo "#      (7) guest/admin      (8) telnet          (9) findBad                   #"
    echo "#-----------------------------------------------------------------------------#"
    set /p choice=choose an option: 
        if "%choice%"=="0" goto :passPol
        if "%choice%"=="1" goto :lockPol
        if "%choice%"=="2" goto :audit
        if "%choice%"=="3" goto :firewall
        if "%choice%"=="4" goto :hidden
        if "%choice%"=="5" goto :remoteConsole
        if "%choice%"=="6" goto :remoteAccess
        if "%choice%"=="7" goto :guestAdmin
        if "%choice%"=="8" goto :telnet
        if "%choice%"=="9" goto :findBad

:passPol
    Rem changes pass reqs
    net accounts /MINPWLEN:8
    net accounts /MAXPWAGE:30
    net accounts /MINPWAGE:15
    net accounts /UNIQUEPW:24
    Set-ADDefaultDomainPasswordPolicy -ComplexityEnabled true
    Set-ADDefaultDomainPasswordPolicy -ReversibleEncryptionEnabled false
    Set-ADDefaultDomainPasswordPolicy -PasswordHistoryCount 24
    pause   
    goto :launch

:lockPol
    Rem changes lockout stuff
        rem Set-ADDefaultDomainPasswordPolicy -LockoutThreshold 5
        rem Set-ADDefaultDomainPasswordPolicy -LockoutDuration 0.0:30:0.0
        rem Set-ADDefaultDomainPasswordPolicy -LockoutObservationWindow 0.0:30:0.0
    net accounts /LOCKOUTTHRESHOLD:5
    net accounts /LOCKOUTDURATION:30
    net accounts /LOCKOUTWINDOW:30
    pause
    goto :launch


:audit
    auditpol /set /category:* /success:enable
    auditpol /set /category:* /failure:enable

    pause
    goto :launch

:firewall
    netsh advfirewall set allprofiles state on
    pause
    goto :launch

:hidden
    rem shows hidden folders
    reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v Hidden /t REG_DWORD /d 1 /f
    reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v ShowSuperHidden /t REG_DWORD /d 1 /f
    powershell -c gps 'explorer' ^| stop-process

    pause   
    goto :launch

:remoteConsole
    rem disable remote console access
    sc stop "TermService"
    sc config "TermService" start= disabled
    sc stop "SessionEnv"
    sc config "SessionEnv" start= disabled
    sc stop "UmRdpService"
    sc config "UmRdpService" start= disabled
    sc stop "RemoteRegistry"
    sc config "RemoteRegistry" start= disabled

    pause   
    goto :launch

:remoteAccess
    rem disable remote access
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v "fDenyTSConnections" /t REG_DWORD /d "1" /f
    pause   
    goto :launch

:guestAdmin
    rem disables guest and admin accounts
    net user administrator /active:no
    net user guest /active:no
    pause
    goto :launch

:telnet
    DISM /online /disable-feature /featurename:TelnetClient
    DISM /online /disable-feature /featurename:TelnetServer
    sc stop "TlntSvr"
    sc config "TlntSvr" start= disabled
    pause
    goto :launch

:findBad
    cd C:/Users/
    rem very weird way of writing the paths and names of any files in a new file on the desktop
    dir *.png  *.jpg  *.jpeg  *.mp3  *.mp4  *.gif  *.mov  *.wav  *.img  *.webp  *.ac3  *.aac  *.aiff  *.flac  *.m4a  *.m4p  *.midi  *.exe  *.mp2  *.avi  *.wma  *.ogg  *.m3u  *.bmp  *.mpeg4 *.vqf /b/s/a/d > %userprofile%\Desktop\fortnite.txt
    pause
    goto :launch