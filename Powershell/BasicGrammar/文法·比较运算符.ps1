# Demo Source
# https://learn.microsoft.com/zh-cn/training/modules/filter-objects-out-of-pipeline/2-learn-about-comparison-operators-powershell

# 要开始筛选，需要一种方法来让 PowerShell 知道你想要保留哪些对象，且想要从管道中移除哪些对象。 为此，可以为要保留的对象指定条件。 为此，可以使用某个 PowerShell 比较运算符将对象的特定属性与指定的值进行比较。 如果比较结果为 true，PowerShell 会保留该对象；如果比较结果为 false，则将其移除。

# 下表列出了基本比较运算符及其含义。

# 表 1：比较运算符

# 运算符	说明
# -eq	等于
# -ne	不等于
# -gt	大于
# -lt	小于
# -le	小于或等于
# -ge	大于或等于
# 当与字符串一起使用时，这些运算符不区分大小写。 这意味着无论字母是否大写，结果都将相同。 每个运算符都有区分大小写的版本，并且以字母 c 开头，例如 -ceq 和 -cne。

# PowerShell 还包含 -like 运算符及其区分大小写的版本 -clike。 -like 运算符类似于 -eq，但支持在字符串比较中使用问号 (?) 和星号 (*) 通配符。

# 其他更高级的运算符超出了本课程的范围。 这些运算符包括：

# -in 和 -contains 运算符，用于测试集合中是否存在某对象。
# -as 运算符，用于测试对象是否为指定类型。
# -match 和 -cmatch 运算符，用于将字符串与正则表达式进行比较。
# PowerShell 还包含许多与比较逻辑相反的运算符，例如 -notlike 和 -notin。

# 可在命令提示符处直接进行比较，这会返回 True 或 False。 下面是一个示例：

100 -gt 10
# True
'hello' -eq 'HELLO'
# True
'hello' -ceq 'HELLO'
# False