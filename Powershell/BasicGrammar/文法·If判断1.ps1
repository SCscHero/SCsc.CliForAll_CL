# Demo Source
# https://learn.microsoft.com/zh-cn/training/modules/script-with-powershell/6-flow-control

$Value = 3
If ($Value -le 0) 
{
  Write-Host "Is negative"
} Else {
  Write-Host "Is Positive"
}


# _FullyTax.ps1_
# Possible values: 'Minor', 'Adult', 'Senior Citizen'
$Status = 'Minor'
If ($Status -eq 'Minor') 
{
  Write-Host $False
} ElseIf ($Status -eq 'Adult') {
  Write-Host $True
} Else {
  Write-Host $False
}