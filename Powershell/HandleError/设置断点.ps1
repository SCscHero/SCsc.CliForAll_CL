# Demo Source
# https://learn.microsoft.com/en-us/training/modules/troubleshoot-scripts-handle-errors-windows-powershell/4-use-breakpoints-scripts


Set-PSBreakPoint -Script "MyScript.ps1" -Line 23

Set-PSBreakPoint -Command "Set-ADUser" -Script "MyScript.ps1"

Set-PSBreakPoint -Variable "computer" -Script "MyScript.ps1" -Mode ReadWrite