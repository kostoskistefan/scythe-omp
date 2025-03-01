# Initialize Oh-My-Posh
oh-my-posh init pwsh --config "$Env:POSH_THEMES_PATH/scythe.omp.json" | Invoke-Expression

# Import User Modules
Import-Module -Name PSReadLine
Import-Module -Name Terminal-Icons
Import-Module -Name Get-ChildItemColor

# Enable VI Mode
Set-PSReadLineOption -EditMode vi

# Add Command Aliases
Set-Alias -Name vim -Value nvim
Set-Alias -Name ip -Value ipconfig

# Add Keyboard Shortcuts
Set-PSReadLineKeyHandler -Key Tab MenuComplete
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadLineKeyHandler -Chord ctrl+w -Function BackwardKillWord

# Remove Default Keyboard Shortcuts
Remove-PSReadLineKeyHandler -Chord "ctrl+v"
Remove-PSReadLineKeyHandler -Chord "ctrl+v" -ViMode Command

# Options
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -HistorySearchCursorMovesToEnd