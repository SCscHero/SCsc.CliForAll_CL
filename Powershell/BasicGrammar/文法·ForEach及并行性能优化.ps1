#Demo来源
#https://learn.microsoft.com/zh-cn/training/modules/work-script-constructs-windows-powershell/2-review-use-foreach-loop-scripts

# ForEach文法
ForEach ($user in $users) {
     Set-ADUser $user -Department "Marketing"
}


# 优化并行性能 使用-Parallel
$users | ForEach-Object -Parallel { Set-ADUser $user -Department "Marketing" }

# 在 PowerShell 7 中，已将 -Parallel 参数添加到 ForEach-Object cmdlet。 这样，管道就可以同时处理多个对象。 相较于标准 ForEach 循环，同时处理多个对象所提供的性能更佳。 如果使用的是 PowerShell 7，应考虑这一点。 以下示例说明了如何将 ForEach-Object 与 -Parallel 参数配合使用。