# Demo Source
# https://learn.microsoft.com/zh-cn/training/modules/work-script-constructs-windows-powershell/7-review-break-continue-scripts

ForEach ($user in $users) {
   If ($user.Name -eq "Administrator") {Continue}
   Write-Host "Modify user object"
}


ForEach ($user in $users) {
   $number++
   Write-Host "Modify User object $number"
   If ($number -ge $max) {Break}
}