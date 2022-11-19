# Demo Source
# https://learn.microsoft.com/zh-cn/training/modules/import-data-different-formats-for-use-scripts/4-use-import-clixml-cmdlet-scripts

# XML 是一种比 CSV 文件更复杂的数据存储格式。 将 XML 用于 Windows PowerShell 的主要优点是它可以保存多个级别的数据。 CSV 文件适用于列是对象属性的信息表。 在 CSV 文件中，很难使用多值属性，而 XML 可以轻松表示多值属性，甚至可以表示具有其他对象作为属性的对象。

# 使用 Import-Clixml 从 XML 文件中检索数据会创建一个对象数组。 由于 XML 可能很复杂，因此通过直接查看 XML 文件的内容，可能不容易理解对象属性。 可以使用 Get-Member 来标识导入的数据的属性。

# Import-Clixml cmdlet 使用以下语法：

$users = Import-Clixml C:\Scripts\Users.xml

# 可以使用 -First 和 -Skip 参数来限制 Import-Clixml 检索的数据。 -First 参数指定仅从 XML 文件的开头检索指定数量的对象。 -Skip 参数指定从 XML 文件开头忽略指定数量的对象，并检索所有剩余的对象。