# 参数化PS.ps1
Param (
  $Path
)
New-Item $Path # Creates a new file at $Path.
Write-Host "File $Path was created"

# ./参数化PS.ps1 -Path './newfile.txt' # File ./newfile.txt was created.