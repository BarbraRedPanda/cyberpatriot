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
    echo #-                       Parsa's CyberPatriot Script                           -#
    echo #-------------------------------------------------------------------------------#
    echo #-                            'We like fortnite'                               -#
    echo #-                     -Tyler 'Fortnite' 'Ninja' Blevins                       -#
    echo #-------------------------------------------------------------------------------#
    echo #         (0) password    (1) lockout    (2) audit    (3) firewall              #
    echo #                                                                               #
    echo #             (4) remote   (5) guest   (6) rm -rf   (7) clear                   #
    echo #-------------------------------------------------------------------------------#
    
    set /p choice=Choose an option: 
        if "%choice%"=="0" goto :pass
        if "%choice%"=="1" goto :lock
        if "%choice%"=="2" goto :audit
        if "%choice%"=="3" goto :fw 
        if "%choice%"=="4" goto :remote
        if "%choice%"=="5" goto :guest
        if "%choice%"=="6" goto :rm
        if "%choice%"=="7" goto :clear
        else goto :launch
        
:pass
    :: pass requirements
    net accounts /MINPWLEN:14
    net accounts /MAXPWAGE:30
    net accounts /MINPWAGE:15
    net accounts /UNIQUEPW:24

    rem change passes (note, in an actual scenario you wouldn't make them the same)
    for /f "tokens=*" %%a in ('type %path%resources\users.txt') do (
        net user "%%a" "LarryKedigh#1Fan!!!"
        C:\Windows\System32\wbem\wmic UserAccount where Name="%%a" set PasswordExpires=True
    )
    :: Made passwords expire, and set passwords

    pause
    goto :launch

:lock
    ::changes lockout duration
    net accounts /LOCKOUTTHRESHOLD:5
    net accounts /LOCKOUTDURATION:30
    net accounts /LOCKOUTWINDOW:30
    ::doesn't show last logged in
    reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v dontdisplaylastusername /t REG_DWORD /d 1 /f
    pause
    goto :launch

:audit
    ::audits all LocalSecPol success/failures 
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


:rm
    :: creates a new rich-text (.txt) file (called "BadFiles.txt") on current user's desktop and lists all items of
    :: goofy file types in the 'C:/Users/' directory
    ::need to somehow exclude %appdata% in a terse way
    cd C:/Users
    dir /b/s/a/d *.txt >> C:/Users/%username%/Desktop/BadFiles.txt
    dir /b/s/a/d *.mp3 >> C:/Users/%username%/Desktop/BadFiles.txt
    dir /b/s/a/d *.mp4 >> C:/Users/%username%/Desktop/BadFiles.txt
    dir /b/s/a/d *.wav >> C:/Users/%username%/Desktop/BadFiles.txt
    dir /b/s/a/d *.mpeg >> C:/Users/%username%/Desktop/BadFiles.txt
    dir /b/s/a/d *.docx >> C:/Users/%username%/Desktop/BadFiles.txt
    dir /b/s/a/d *.doc >> C:/Users/%username%/Desktop/BadFiles.txt
    dir /b/s/a/d *.png >> C:/Users/%username%/Desktop/BadFiles.txt
    dir /b/s/a/d *.pdf >> C:/Users/%username%/Desktop/BadFiles.txt
    dir /b/s/a/d *.jpg >> C:/Users/%username%/Desktop/BadFiles.txt
    dir /b/s/a/d *.jpeg >> C:/Users/%username%/Desktop/BadFiles.txt
    dir /b/s/a/d *.stl >> C:/Users/%username%/Desktop/BadFiles.txt
    dir /b/s/a/d *.zip >> C:/Users/%username%/Desktop/BadFiles.txt
    dir /b/s/a/d *.gif >> C:/Users/%username%/Desktop/BadFiles.txt
    dir /b/s/a/d *.html >> C:/Users/%username%/Desktop/BadFiles.txt
    dir /b/s/a/d *.css >> C:/Users/%username%/Desktop/BadFiles.txt
    dir /b/s/a/d *.js >> C:/Users/%username%/Desktop/BadFiles.txt
    dir /b/s/a/d *.php >> C:/Users/%username%/Desktop/BadFiles.txt
    dir /b/s/a/d *.rar >> C:/Users/%username%/Desktop/BadFiles.txt
    dir /b/s/a/d *.py >> C:/Users/%username%/Desktop/BadFiles.txt
    dir /b/s/a/d *.svg >> C:/Users/%username%/Desktop/BadFiles.txt
    dir /b/s/a/d *.ogg >> C:/Users/%username%/Desktop/BadFiles.txt
    dir /b/s/a/d *.avi >> C:/Users/%username%/Desktop/BadFiles.txt
    echo "Copied every unusual files in the Users directory onto the desktop as BadFiles.txt"
    echo "Check the file to make sure there are no critical files"
    echo "If there are, remove them from the list :)"
    pause
    goto :launch


:clear
    :: clears all of the files in the "BadFiles.txt" file from the :rm method
    :: Allows the user to change the BadFiles.txt if there are any necessary files in the directory
    for /F "usebackq delims=" %%A in ("C:/Users/%username%/Desktop/BadFiles.txt") do (
        set "filepath=%%A"
        echo Deleting: !filepath!
        del "!filepath!"
    )

    pause
    goto :launch

