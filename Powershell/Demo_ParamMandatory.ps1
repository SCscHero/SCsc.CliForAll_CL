
Param(
   [Parameter(Mandatory)]
   $Path
)
New-Item $Path
Write-Host "File created at path $Path"


# ./Demo_ParamList.ps1 -Path '' # File ./newfile.txt was created.
# 如果运行此脚本并省略 $Path 的值，则会出现一个提示该值缺失的对话框：
# cmdlet CreateFile.ps1 at command pipeline position 1
# Supply values for the following parameters:
# Path:
# 可通过为用户提供帮助消息来改进此修饰器，用户在运行脚本时将看到该消息：