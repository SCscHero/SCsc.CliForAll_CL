# Demo Source
# https://learn.microsoft.com/zh-cn/training/modules/work-arrays-hash-tables-window-powershell-scripts/2-define-array-windows

# 数组是一种数据结构，旨在存储相同类型的项的集合。 可以将数组视为包含多个值或对象的变量。 包含单个值的变量非常有用，但对于复杂任务，通常需要处理多组项。 例如，可能需要更新多个域用户帐户上的 IP 语音 (VoIP) 属性。 或者，可能需要检查一组服务的状态，并重启已停止的所有服务。 将多个对象或值放入变量中时，它将成为数组。

# 可以通过在逗号分隔的列表中提供多个值来创建数组。 例如：

$computers = "LON-DC1","LON-SRV1","LON-SRV2"
$numbers = 228,43,102

$users = Get-ADUser -Filter *
$files = Get-ChildItem C:\

# 可以通过对变量使用 GetType() 方法来验证变量是否为数组。 列出的 BaseType 将为 System.Array。
# 可以在准备好将内容放入空数组之前创建空数组。 稍后在脚本中有一个向数组添加项的循环时，这会很有用。 例如：
$newUsers = @()

# 还可以在向变量添加单个值时强制创建数组。 这将创建一个具有单个值的数组，便于以后向其中添加项。 例如：
[array]$computers="LON-DC1"