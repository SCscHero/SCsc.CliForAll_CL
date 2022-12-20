
$item = "C:\LIST.CODE\Ink\SOO.NetCore3.1\checkoutAlterConfig.ps1"

$Regex = [Regex]::new(".*\\") 

$RegexPath = ($Regex.Match($item).Value)
