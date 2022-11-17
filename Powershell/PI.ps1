# Demo来源：
# https://learn.microsoft.com/zh-cn/training/modules/script-with-powershell/2-introduction-scripting

# PI.ps1
$PI = 3.14
Write-Host "The value of `$PI is $PI"

# 单引号。 单引号指定文字；所写即所得。 下面是一个示例：
Write-Host 'Here is $PI' # Prints Here is $PI
# 若要进行内插，以解释并输出 $PI 的值，则需要使用双引号。双引号。 使用双引号时，将插入字符串中的变量：
Write-Host "Here is `$PI and its value is $PI" # Prints Here is $PI and its value is 3.14
# 这里存在两个问题。 反引号 (`) 使 $PI 的第一个实例免于被内插。 在第二个实例中，将内插值并写出该值。
# $(). 还可在双引号内编写表达式。 若要执行该操作，请使用 $() 构造。 使用此构造的一种方法是对对象的属性进行内插。 下面是一个示例：
Write-Host "An expression $($PI + 1)" # Prints An expression 4.14


# 作用域
# 范围是 PowerShell 定义读取变量、别名和函数等构造的位置的方式。 学习编写脚本时，需知道你所具备的访问权限、可以更改的内容以及可以更改的位置。 如果不了解范围的工作原理，代码可能无法按预期方式工作。

# 范围类型
# 下面讨论各个范围：

# 全局范围。 在此范围内创建类似变量的构造时，它们会在会话结束后继续存在。 启动新的 PowerShell 会话时，出现的所有内容都可认为属于此范围。

# 脚本范围。 运行脚本文件时，将创建脚本范围。 例如，在文件中定义的变量或函数就属于脚本范围。 文件完成运行后，它将不再存在。 例如，可以在脚本文件中创建一个变量，并以全局范围为目标。 但需要通过在变量前面加上关键字 global 来显式定义该范围。

# 本地范围。 本地范围是当前范围，可以是全局范围或任何其他范围。

# 范围规则
# 范围规则有助于你了解在给定点可见的值。 它们还有助于了解如何更改值。

# 范围可以嵌套。 范围可以具有父范围。 父范围是位于你所在范围之外的外部范围。 例如，本地范围可以将全局范围作为父范围。 相反，范围可以具有嵌套范围（也称为子范围）。

# 项在当前范围和子范围中可见。 项（如变量或函数）在创建时所在的范围中可见。 默认情况下，它在任何子范围中也可见。 可以通过将项设为在范围内为专用来更改该行为。 下面是一个使用在控制台中定义的变量的示例：
$test = 'hi'
# 如果你有一个包含以下内容的“Script.ps1”文件，则在脚本运行时它将显示“hi”：
Write-Host $test # Prints hi




# 创建档案
# 首次安装 PowerShell 时，没有配置文件，但有一个 $Profile 变量。 它是一个对象，指向应放置每个要应用的配置文件的路径。 创建配置文件：

# 确定要创建配置文件的级别。 可运行 $Profile | Select-Object * 来查看配置文件类型以及与它们关联的路径。
$Profile | Select-Object *
# 使用如下所示的命令选择配置文件类型并在其位置创建文本文件：New-Item -Path $Profile.CurrentUserCurrentHost。
New-Item -Path $Profile.CurrentUserCurrentHost
# 将自定义项添加到文本文件并保存。 下一次启动会话时，将应用所做的更改。

