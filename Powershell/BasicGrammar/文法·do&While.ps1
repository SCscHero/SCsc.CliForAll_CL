# Demo Source
# https://learn.microsoft.com/zh-cn/training/modules/work-script-constructs-windows-powershell/6-review-other-loop-scripts

Do {
   Write-Host "Script block to process"
} While ($answer -eq "go")


Do {
   Write-Host "Script block to process"
} Until ($answer -eq "stop")


While ($answer -eq "go") {
   Write-Host "Script block to process"
}