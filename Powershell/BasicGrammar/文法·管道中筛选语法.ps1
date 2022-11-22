# Demo Source:查看管道中筛选语法
# https://learn.microsoft.com/zh-cn/training/modules/filter-objects-out-of-pipeline/3-review-basic-filter-syntax-pipeline

Get-Service

Get-Service | Where Status –eq Running


Get-Service | Where Name.Length –gt 5


# Demo Source:查看管道中高级筛选语法
# https://learn.microsoft.com/zh-cn/training/modules/filter-objects-out-of-pipeline/4-review-advanced-filter-syntax-pipeline


Get-Service | Where Status –eq Running

Get-Service | Where-Object –FilterScript { $PSItem.Status –eq 'Running' }

Get-Service | Where {$PSItem.Status –eq 'Running'}

Get-Service | ? {$_.Status –eq 'Running'}

Get-EventLog –LogName Security –Newest 100 |
Where { $PSItem.EventID –eq 4672 –and $PSItem.EntryType –eq 'SuccessAudit' }

Get-Process | Where { $PSItem.CPU –gt 30 –and VM –lt 10000 }

Get-Service | Where { $PSItem.Status –eq 'Running' –or 'Starting' }

Get-Process | Where { $PSItem.Responding –eq $True }

Get-Process | Where { $PSItem.Responding }

Get-Process | Where { -not $PSItem.Responding }

Get-Service | Where {$PSItem.Name.Length –gt 8}
