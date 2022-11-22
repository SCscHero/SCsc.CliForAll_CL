# https://learn.microsoft.com/zh-cn/training/modules/work-arrays-hash-tables-window-powershell-scripts/3-work-array-lists-windows

# 在脚本中，需要引用放置在数组中的数据。 可以同时访问数组中的所有项，也可以单独访问它们。 若要显示数组中的所有项，请输入变量名称，然后按 Enter 键，就像处理具有单个值的变量一样。

# 可以按索引号引用数组中的各个项。 创建数组时，将为每个项目分配一个从 0 开始的索引号。 因此，数组中的第一项是项 0，数组中的第二项是项 1，依此类推。 若要显示特定项，请将索引号放在变量名称后面的括号中。 以下示例显示数组中存储在变量 $users 中的第一项：
$users[0]
# 还可以向数组添加新项。 以下示例将存储在 $user1 中的用户帐户添加到 $users 数组中：
$users = $users + $user1
$users += $user1
# 若要确定可以对数组中的内容执行的操作，请使用 Get-Member cmdlet。 将数组的内容通过管道传送到 Get-Member，返回的结果标识可用于数组中项的属性和方法。 例如：
$files | Get-Member

# 备注
# 将包含混合数据类型的数组通过管道传输到 Get-Member 时，将返回每种数据类型的结果。 这也是确定数组中哪些数据类型的有用方法。若要查看数组（而不是数组中的项）可用的属性和方法，请使用以下语法：
Get-Member -InputObject $files



# 使用数组列表
# Windows PowerShell 创建的默认数组类型是固定大小的数组。 这意味着，将项添加到数组时，该数组实际上是使用附加项重新创建的。 使用相对较小的数组时，这不是问题。 但是，如果逐个向数组添加数千个项目，则每次重新创建数组都会对性能产生负面影响。 使用固定大小的数组的另一个问题是删除项。 没有简单的方法可从固定大小的数组中删除项。

# 若要解决数组的缺点，可以使用数组列表。 数组列表函数类似于数组，但其大小不固定。 这意味着可以使用方法添加和删除项。
[System.Collections.ArrayList]$computers = "LON-DC1","LON-SVR1","LON-CL1"

$computers=New-Object System.Collections.ArrayList

$computers.Add("LON-SRV2")

$computers.Remove("LON-CL1")
# 根据索引号删除数组中的项
$computers.RemoveAt(1)