#Demo Source
#https://learn.microsoft.com/zh-cn/training/modules/work-script-constructs-windows-powershell/5-review-for-construct-scripts

For($i=1; $i -le 10; $i++) {
   Write-Host "Creating User $i"
}


# For 构造使用初始状态、条件和操作。 在前面的示例中，初始状态为 $i=1。 条件为 $i -le 10。 指定的条件为 true 时，将处理另一个循环。 处理每个循环后，将执行该操作。 在此示例中，操作为 $i++，其使 $i 递增 1。

# 每次处理循环时，都会运行大括号内的脚本块。 在前面的示例中，此循环被处理 10 次。