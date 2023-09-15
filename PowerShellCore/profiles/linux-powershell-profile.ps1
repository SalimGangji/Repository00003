# On the linux system with pwsh installed, overwrite $profile with this file
# Usually $profile is located at ${HOME}/.config/powershell/Microsoft.PowerShell_profile.ps1
# but you can set the profile location to anything you like
# Once the profile is in place, any newly created pwsh session will use the profile settings

New-Alias -name "ll" -value "Get-ChildItem"
Set-PSReadLineOption -Colors @{"Command"=[ConsoleColor]::DarkCyan};
Set-PSReadLineOption -Colors @{"String"=[ConsoleColor]::DarkBlue}
Set-PSReadLineOption -Colors @{"Number"=[ConsoleColor]::DarkMagenta};
Set-PSReadLineOption -Colors @{"Member"=[ConsoleColor]::Blue}
Set-PSReadLineOption -Colors @{"Parameter"=[ConsoleColor]::DarkGray}
Set-PSReadLineOption -Colors @{"Type"=[ConsoleColor]::Magenta}
Set-PSReadLineOption -Colors @{"Comment"=[ConsoleColor]::Blue}
Set-PSReadLineOption -Colors @{"Default"=[ConsoleColor]::Gray}
#Get-PSReadLineOption

# https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797#color-codes
# https://learn.microsoft.com/en-us/powershell/scripting/learn/shell/using-light-theme?view=powershell-7.3
$PSStyle.Formatting.Verbose            = "`e[38;5;166m"
# https://github.com/PowerShell/PowerShell/issues/16441
# $Host.PrivateData.VerboseForegroundColor = 'Cyan'

##---------------------------------------
## useful snippet for seeing what colours look like in your current terminal
##---------------------------------------
# [Enum]::GetValues([ConsoleColor]) | ForEach-Object { Write-Host "$_" -ForegroundColor $_ }
