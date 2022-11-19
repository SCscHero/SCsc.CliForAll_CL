# 许多应用程序可以将数据导出到 CSV 文件。 此功能使 Import-Csv cmdlet 非常有用，因为它可以导入从这些应用程序导出的数据。 导入 CSV 文件时，文件中的每一行都将成为数组中的一个项，第一行除外。 CSV 文件中的第一行是标题行，用于命名数组中每个项的属性。

# Import-Csv cmdlet 使用以下语法：
$users = Import-Csv C:\Scripts\Users.csv

# Users.csv 的示例数据：
# First,Last,UserID,Department
# Amelie,Garner,AGarner,Sales
# Evan,Norman,ENorman,Sales
# Siu,Robben,SRobben,Sales


#运行前面的示例时，来自 Users.csv 的数据将放在 $users 数组中。 数组中有三个项。 数组中的每个项都有四个在标题行中命名的属性。 可以按名称引用每个属性。 例如：
$users[2].UserID


# 某些程序通过使用逗号以外的分隔符导出数据。 如果数据使用备用分隔符，则可以使用 -Delimiter 参数指定哪个字符。

# 如果数据文件不包含标题行，则可以使用 -Header 参数为列提供名称。 可以在命令中提供属性名称的列表，也可以提供包含属性名称的数组。 使用 -Header 参数时，文件中的所有行都将成为导入数组中的项。



