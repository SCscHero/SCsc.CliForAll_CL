# 执行策略
# 可以使用以下 cmdlet 来管理执行策略：

# Get-ExecutionPolicy. 此 cmdlet 返回当前执行策略。 在 Linux 和 macOS 上，返回的值为 Unrestricted。 对于这些操作系统，不能更改此值。 这种限制不会降低 Linux 或 Mac 的安全性。 请记住，执行策略是一项安全功能，而不是一种安全机制。
Get-ExecutionPolicy

# Set-ExecutionPolicy. 如果使用的是 Windows 计算机，则可以使用此 cmdlet 更改执行策略的值。 它采用 -ExecutionPolicy 参数。 有多个可能的值。 建议将 Default 用作值。 该值在 Windows 客户端上将策略设置为 Restricted，在 Windows Server 上则设置为 RemoteSigned。 Restricted 表示无法运行脚本。 你只能运行命令，这在客户端上是说得通的。 RemoteSigned 表示可以运行在本地计算机上编写的脚本。 从 Internet 下载的脚本需要由受信任的发布者进行数字签名。