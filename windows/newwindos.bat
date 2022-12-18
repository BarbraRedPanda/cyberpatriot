goto :main 
    
:main
@echo off
color 08

:: checks for admin
net session
if %errorlevel%==0 (
 	echo "We're in. hacking itno mainframe. initiansting fortniteburger."
) else (
    echo "you suck"
 	pause
    exit
)

:launch

    cls    
    echo #-------------------------------------------------------------------------------#
    echo #-                     Cybervores CyberPatriot Script                          -#
    echo #-------------------------------------------------------------------------------#
    echo #-                            'We like fortnite'                               -#
    echo #-                     -Tyler 'Fortnite' 'Ninja' Blevins                       -#
    echo #-------------------------------------------------------------------------------#
    echo #         (0) password    (1) lockout    (2) audit    (3) firewall              #
    echo #                                                                               #
    echo #                 (4) remote     (5) guest     (6) rm -rf                       #
    echo #-------------------------------------------------------------------------------#
    
    set /p choice=Choose an option: 
        if "%choice"=="0" goto :pass
        if "%choice"=="1" goto :lock
        if "%choice"=="2" goto :audit
        if "%choice"=="3" goto :fw 
        if "%choice"=="4" goto :remote
        if "%choice"=="5" goto :guest
        if "%choice"=="6" goto :rm
        if "%choice"=="7" goto :
        if "%choice"=="8" goto :
        if "%choice"=="9" goto :
        else goto :launch
        
:pass
    :: pass requirements
    net accounts /MINPWLEN:8
    net accounts /MAXPWAGE:30
    net accounts /MINPWAGE:15
    net accounts /UNIQUEPW:24

    rem change passes
    for /f "tokens=*" %%a in ('type %path%resources\users.txt') do (
        net user "%%a" "LarryKedigh#1Fan!!!"
        C:\Windows\System32\wbem\wmic UserAccount where Name="%%a" set PasswordExpires=True
    )
    :: Made passwords expire, and set passwords

    pause
    goto :launch

:lock
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

:fw
    netsh advfirewall set allprofiles state on
    echo Firewall enabled
    echo Setting basic firewall rules..
    netsh advfirewall firewall set rule name="Remote Assistance (DCOM-In)" new enable=no 
    netsh advfirewall firewall set rule name="Remote Assistance (PNRP-In)" new enable=no 
    netsh advfirewall firewall set rule name="Remote Assistance (RA Server TCP-In)" new enable=no 
    netsh advfirewall firewall set rule name="Remote Assistance (SSDP TCP-In)" new enable=no 
    netsh advfirewall firewall set rule name="Remote Assistance (SSDP UDP-In)" new enable=no 
    netsh advfirewall firewall set rule name="Remote Assistance (TCP-In)" new enable=no 
    netsh advfirewall firewall set rule name="Telnet Server" new enable=no 
    netsh advfirewall firewall set rule name="netcat" new enable=no
    goto :launch

:remote
    :: disable remote console access
    sc stop "TermService"
    sc config "TermService" start= disabled
    sc stop "SessionEnv"
    sc config "SessionEnv" start= disabled
    sc stop "UmRdpService"
    sc config "UmRdpService" start= disabled
    sc stop "RemoteRegistry"
    sc config "RemoteRegistry" start= disabled

    :: disable remote access
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v "fDenyTSConnections" /t REG_DWORD /d "1" /f
    pause   
    goto :launch

:guest
    net user guest /active:no
    pause
    goto :launch