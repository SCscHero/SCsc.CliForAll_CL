# https://learn.microsoft.com/zh-cn/training/modules/work-arrays-hash-tables-window-powershell-scripts/5-work-hash-tables-windows
# 表 2：使用哈希表来存储 IP 地址和计算机名

# 密钥	值
# LON-DC1	192.168.0.10
# LON-SRV1	192.168.0.11
# LON-SRV2	192.168.0.12

$servers.'LON-DC1'
$servers['LON-DC1']
# 请注意上面的示例中的以下语法：
# 它以 @ 符号开头。
# 键和关联的值括在大括号中。
# 项之间用分号分隔。
$servers = @{"LON-DC1" = "172.16.0.10"; "LON-SRV1" = "172.16.0.11"}
$servers.Add("LON-SRV2","172.16.0.12")
$servers.Remove("LON-DC1")
# 更新键值
$servers."LON-SRV2"="172.16.0.100"
$servers | Get-Member