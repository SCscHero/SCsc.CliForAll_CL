# Demo Source
# https://learn.microsoft.com/zh-cn/training/modules/script-with-powershell/5-exercise-parameters

Param(
  [string]$Path = './app',
  [string]$DestinationPath = './'
)

Param(
  [string]$Path = './app',
  [string]$DestinationPath = './'
)
$date = Get-Date -format "yyyy-MM-dd"
Compress-Archive -Path $Path -CompressionLevel 'Fastest' -DestinationPath "$($DestinationPath + 'backup-' + $date)"
Write-Host "Created backup at $($DestinationPath + 'backup-' + $date + '.zip')"

# 移动或命名
mv app webapp
# 删除文件
rm backup-<current date as YYYY-MM-DD>.zip