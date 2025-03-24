# Powershell Profile

# function Invoke-uvx { & (Get-Command uvx).Source jupytext ${Args} }
# Set-Alias -Name 'jupytext' -Value Invoke-uvx
$env:path = 'C:\Users\dziliak\git\zk;' + $env:path

# To use Starship
Invoke-Expression (&starship init powershell)
