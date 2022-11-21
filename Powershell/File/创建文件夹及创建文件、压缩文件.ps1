# Demo Source
# https://learn.microsoft.com/zh-cn/training/modules/script-with-powershell/5-exercise-parameters
# 创建文件
mkdir app
cd app
touch index.html app.js
cd ..
# 备份文件
touch Backup.ps1
code Backup.ps1

# 该脚本调用 Compress-Archive 并使用以下这三个参数：

# -Path，这是要压缩的文件的目录。
# -CompressionLevel，用于指定文件的压缩量。
# -DestinationPath，这是所生成的压缩文件的路径。
$date = Get-Date -format "yyyy-MM-dd"
Compress-Archive -Path './app' -CompressionLevel 'Fastest' -DestinationPath "./backup-$date"
Write-Host "Created backup at $('./backup-' + $date + '.zip')"

# ./Backup.ps1