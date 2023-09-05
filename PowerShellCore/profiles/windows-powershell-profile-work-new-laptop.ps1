##---------------------------------------
## Downloading modules - run these once in an adminstrator terminal
##---------------------------------------
#install-module googlecloud

##---------------------------------------
## Overwriting the profile when any changes are applied
##---------------------------------------
# copy-item -path [updated-profile] -destination $profile

##---------------------------------------
## Variables
##---------------------------------------
$masterFolder = "C\MasterFolder"
$everything = "C:\MasterFolder\Everything"
$repos = "${everything}\repos"

##---------------------------------------
## Aliases
##---------------------------------------
New-Alias ll "get-childitem"

##---------------------------------------
## gcp (module depricated)
##---------------------------------------
# import-module googlecloud

##---------------------------------------
## required if using gcloud
##---------------------------------------
$PSNativeCommandArgumentPassing = "Legacy"

##---------------------------------------
## colours for when using "Solarized Light" Windows Terminal theme
##---------------------------------------
Set-PSReadLineOption -Colors @{"Member"=[ConsoleColor]::Magenta}
Set-PSReadLineOption -Colors @{"Parameter"=[ConsoleColor]::DarkMagenta}
Set-PSReadLineOption -Colors @{"Number"=[ConsoleColor]::DarkBlue}

# https://learn.microsoft.com/en-us/powershell/module/psreadline/set-psreadlineoption?view=powershell-7.3#example-4-set-multiple-color-options
Set-PSReadLineOption -Colors @{
  Command            = [ConsoleColor]::Magenta
  Number             = [ConsoleColor]::DarkBlue
  Member             = [ConsoleColor]::DarkGray
  Operator           = [ConsoleColor]::DarkGray
  Type               = [ConsoleColor]::DarkGray
  Variable           = [ConsoleColor]::DarkGreen
  Parameter          = [ConsoleColor]::DarkMagenta
  ContinuationPrompt = [ConsoleColor]::DarkGray
  String             = [ConsoleColor]::Cyan
  Default            = 'DarkGray'
}

# https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797#color-codes
# https://learn.microsoft.com/en-us/powershell/scripting/learn/shell/using-light-theme?view=powershell-7.3
$PSStyle.Formatting.Verbose            = "`e[38;5;166m"

##---------------------------------------
## useful snippet for seeing what colours look like in your current Windows Terminal theme
##---------------------------------------
# [Enum]::GetValues([ConsoleColor]) | ForEach-Object { Write-Host "$_" -ForegroundColor $_ }
