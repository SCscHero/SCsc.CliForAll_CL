# Demo Source
# https://learn.microsoft.com/en-us/training/modules/use-functions-modules-windows-powershell-scripts/2-review-functions


Function Get-SecurityEvent {
   Param (
      [string]$ComputerName
   ) #end Param
   Get-EventLog -LogName Security -ComputerName -$ComputerName -Newest 10
}

Get-SecurityEvent -ComputerName LON-DC1

$securityEvents = Get-SecurityEvent -ComputerName LON-DC1


