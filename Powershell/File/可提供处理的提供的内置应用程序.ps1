# https://learn.microsoft.com/zh-cn/training/modules/connect-data-stores-use-powershell-providers/5-knowledge-check

# 一些常见提供程序包括：

# 注册表。 提供对注册表项和值的访问权限。
# 别名。 提供对 Windows PowerShell cmdlet 别名的访问权限。
# 环境。 提供对 Windows 环境变量及其值的访问权限。
# FileSystem。 提供对文件系统中的文件和文件夹的访问权限。
# 函数。 提供对加载到内存中的 Windows PowerShell 函数的访问权限。
# 变量。 提供对加载到内存中的 Windows PowerShell 变量及其值的访问权限。

# 可以使用 Get-PSProvider cmdlet 显示可用提供程序的列表。 请注意，在加载模块时可以将提供程序添加到 Windows PowerShell，它们在加载前不会显示。 例如，当你运行 Import-Module ActiveDirectory 命令加载 ActiveDirectory 模块，或在运行 Active Directory cmdlet 时使用模块自动加载时，将包含用于 Active Directory 的 PowerShell 提供程序。

# 某些提供程序包括可以查看的帮助文件。 帮助文件使用 about_ProviderName_Provider 命名格式。 例如，FileSystem 提供程序的帮助文件为 about_FileSystem_Provider。 可通过运行以下命令来查看此帮助文件的内容：

Get-Help about_FileSystem_Provider

Get-Command *-Item,*-ItemProperty



# 通过以下问题来检查本模块中学到的内容。

# 1. 你将使用哪个命令来获取注册表提供程序的帮助信息？

# Get-Help about_Registry_Provider
# 正确。 Get-Help about_Registry_Provider 命令获取注册表提供程序的帮助信息。 提供程序帮助主题名称的格式为 about_ProviderName_Provider。


# Get-Command Registry_Provider

# Get-Help Registry_Provider
# 2. 以下哪个选项是你在打开 Windows PowerShell 提示时自动加载的 PowerShell 提供程序？

# HKCU

# Alias
# 正确。 别名提供程序会在你打开 Windows PowerShell 提示符时自动加载。 HKCU 是 PowerShell 驱动器，而不是提供程序。 只有在加载 ActiveDirectory 模块之后，才会加载 ActiveDirectory 提供程序。


# ActiveDirectory
