# Powershell Profile

function Invoke-jupytext { & (Get-Command uvx).Source jupytext ${Args} }
Set-Alias -Name 'jupytext' -Value Invoke-jupytext

# To use Starship
Invoke-Expression (&starship init powershell)
