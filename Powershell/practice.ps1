# 在终端窗口中输入 pwsh 以启动 PowerShell 会话：
# pwsh

# 设置配置文件
# 配置文件是当你启动新的会话时运行的脚本。 使用自定义环境可以提高工作效率。
$Profile | Select-Object *

# 通过运行 New-Item 命令为当前用户和当前主机创建配置文件：
New-Item `
  -ItemType "file" `
  -Value 'Write-Host "Hello <replace with your name>, welcome back" -foregroundcolor Green ' `
  -Path $Profile.CurrentUserCurrentHost -Force
# -Force 开关将覆盖现有内容，因此，在本地运行且具有现有配置文件时，请务必小心。

# 运行 pwsh 创建新的 shell。 现在应会看到以下内容（绿色部分）：
