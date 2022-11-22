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

# 1. 如何引用数组中的第一项？
$users[0] # 正确。 在数组中，所有的项都有索引号，第一个索引号为 0。
$users[1]
$users["1"]
# 2. 将使用哪个命令来更新与哈希表中名为 dc1 的键关联的值？
$computers.keys("dc1") = "Domain Controller"
$computers[5] = "Domain Controller"
$computers.dc1 = "Domain Controller" # 正确。 为哈希表中的键分配值时，请使用格式 $hash.key = value。