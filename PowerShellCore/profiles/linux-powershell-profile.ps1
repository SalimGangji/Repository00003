# On the linux system with pwsh installed, overwrite $profile with this file
# Usually $profile is located at ${HOME}/.config/powershell/Microsoft.PowerShell_profile.ps1
# but you can set the profile location to anything you like
# Once the profile is in place, any newly created pwsh session will use the profile settings

new-alias -name "ll" -value "get-childitem"
set-psreadlineoption -Colors @{"Command"=[ConsoleColor]::DarkCyan};
set-psreadlineoption -Colors @{"String"=[ConsoleColor]::Red}
set-psreadlineoption -Colors @{"Number"=[ConsoleColor]::DarkMagenta};
set-psreadlineoption -Colors @{"Member"=[ConsoleColor]::Blue}
set-psreadlineoption -Colors @{"Parameter"=[ConsoleColor]::DarkGray}
set-psreadlineoption -Colors @{"Type"=[ConsoleColor]::Magenta}
set-psreadlineoption -Colors @{"Comment"=[ConsoleColor]::Blue}
set-psreadlineoption -Colors @{"Default"=[ConsoleColor]::Gray}
#get-psreadlineoption

# https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797#color-codes
# https://learn.microsoft.com/en-us/powershell/scripting/learn/shell/using-light-theme?view=powershell-7.3
$PSStyle.Formatting.Verbose            = "`e[38;5;166m"
# https://github.com/PowerShell/PowerShell/issues/16441
# $Host.PrivateData.VerboseForegroundColor = 'Cyan'

##---------------------------------------
## useful snippet for seeing what colours look like in your current terminal
##---------------------------------------
# [Enum]::GetValues([ConsoleColor]) | ForEach-Object { Write-Host "$_" -ForegroundColor $_ }
