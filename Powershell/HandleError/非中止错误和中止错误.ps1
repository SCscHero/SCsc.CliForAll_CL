# Demo Source
# https://learn.microsoft.com/en-us/training/modules/troubleshoot-scripts-handle-errors-windows-powershell/5-interpret-error-actions-for-commands

$ErrorActionPreference
$ErrorActionPreference = 'Inquire'



# Continue is the default, and it tells the command to display an error message and continue to run.
# SilentlyContinue tells the command to display no error message, but to continue running.
# Inquire tells the command to display a prompt asking the user what to do.
# Stop tells the command to treat the error as terminating and to stop running.


# 选择使用SilentlyContinue为$ErrorActionPreference。您可能认为这使您的脚本更适合于用户，但它可能使故障排除变得困难。


# -ErrorAction parameter

Get-WmiObject -Class Win32_BIOS -ComputerName LON-SVR1,LON-DC1 -ErrorAction Stop

Get-Process –Name Notepad | ForEach-Object { $PSItem.Kill() }