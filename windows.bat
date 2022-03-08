goto :main

#----------------------------------------
#   BarbraRedPanda
#   2022 Cyberpatriot Windows 10 Script
#   https://github.com/BarbraRedPanda/cyberpatriot/
#----------------------------------------

:main
@echo off
color 

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
goto :launch






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
    echo "#      (1) password policy  (2) lockout policy  (3) audit (4) firewall      #"
    echo "#      (5) show hidden folders        #"
    echo "#-----------------------------------------------------------------------------#"
    set /p choice = choose an option: 
        if "%choice%"=="1" goto :passPol
        if "%choice%"=="1" goto :lockPol
        if "%choice%"=="3" goto :audit
        if "%choice%"=="4" goto :firewall
        if "%choice%"=="5" goto :hidden

:passPol
    Rem changes pass reqs
    net accounts /MINPWLEN:8
    net accounts /MAXPWAGE:30
    net accounts /MINPWAGE:15
    net accounts /UNIQUEPW:24
    Set-ADDefaultDomainPasswordPolicy -ComplexityEnabled true
    Set-ADDefaultDomainPasswordPolicy -ReversibleEncryptionEnabled false
    Set-ADDefaultDomainPasswordPolicy -PasswordHistoryCount 24

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

    reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v Hidden /t REG_DWORD /d 1 /f
    reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v ShowSuperHidden /t REG_DWORD /d 1 /f
    powershell -c gps 'explorer' ^| stop-process

    pause   
    goto :launch