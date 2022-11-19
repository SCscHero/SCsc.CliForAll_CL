# Demo Srouce
# https://learn.microsoft.com/en-us/training/modules/use-methods-to-accept-user-inputs-windows-powershell-scripts/4-use-get-credential-cmdlet

# 获取凭据
$cred = Get-Credential
Set-ADUser -Identity $user -Department "Marketing" -Credential $cred

# 导出存储凭据
$cred | Export-Clixml C:\cred.xml


#安装凭据管理器
Install-Module Microsoft.PowerShell.SecretManagement