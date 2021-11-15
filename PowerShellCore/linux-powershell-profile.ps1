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
set-psreadlineoption -Colors @{"Type"=[ConsoleColor]::DarkMagenta}
set-psreadlineoption -Colors @{"Comment"=[ConsoleColor]::Blue}
set-psreadlineoption -Colors @{"Default"=[ConsoleColor]::Gray}
#get-psreadlineoption
