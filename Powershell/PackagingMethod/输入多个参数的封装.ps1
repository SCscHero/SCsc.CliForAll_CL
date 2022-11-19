# Demo Source
# https://learn.microsoft.com/en-us/training/modules/use-methods-to-accept-user-inputs-windows-powershell-scripts/6-pass-parameters-script

Param(
   [string]$ComputerName ,
   [int]$EventID
)

# Default Values
Param(
   [string]$ComputerName = "LON-DC1"
)
# Requesting user input
Param(
   [int]$EventID = Read-Host "Enter event ID"
)


# 使用如下的方法输入参数运行
# .\GetEvent.ps1 -ComputerName LON-DC1 -EventID 5772