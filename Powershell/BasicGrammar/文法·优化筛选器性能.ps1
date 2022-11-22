# Demo Source:优化管道中的筛选器性能
# https://learn.microsoft.com/zh-cn/training/modules/filter-objects-out-of-pipeline/5-optimize-filter-performance-pipeline

Get-Block | Sort-Object –Property Letter | Where-Object –FilterScript { $PSItem.Color –eq 'Red' }

Get-Block | Where-Object –FilterScript { $PSItem.Color –eq 'Red' } | Sort-Object –Property Letter
# 第二个命令速度更快，因为它会从管道中移除不需要的块，从而只对剩下的块进行排序。 第一个命令对所有块进行排序，然后移除其中的许多块。 这意味着大部分排序工作都白费。

# 许多 PowerShell 脚本程序使用助记键，这是一个充当简单提醒的短语，帮助他们在优化性能时记住执行正确的操作。 短语是“左筛选”，这意味着任何筛选应尽可能向左或尽可能靠近命令行的开头。

# 有时，尽可能向左移动筛选意味着不会使用 Where-Object。 例如，Get-ChildItem 命令可以生成包含文件和文件夹的列表。 该命令生成的每个对象都有一个名为 PSIsContainer 的属性。 如果对象表示文件夹，则它包含 True；如果对象表示文件，则包含 False。 以下命令将生成仅包含文件的列表：
Get-ChildItem | Where { -not $PSItem.PSIsContainer }

Get-ChildItem -File