# Demo Source
# https://learn.microsoft.com/en-us/training/modules/use-methods-to-accept-user-inputs-windows-powershell-scripts/3-use-read-host-cmdlet

# ./Powershell\PackagingMethod\输入多种方法.ps1
$answer = Read-Host "How many days"

# 使用一下语法实现接收函数不用显示冒号，最大接收参数为1022个字符。
Write-Host "How many days? " -NoNewline
$answer = Read-Host