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


Set-PSReadLineOption -Colors @{
  Command            = 'Magenta'
  Number             = 'DarkBlue'
  Member             = 'DarkGray'
  Operator           = 'DarkGray'
  Type               = 'DarkGray'
  Variable           = 'DarkGreen'
  Parameter          = 'DarkMagenta'
  ContinuationPrompt = 'DarkGray'
  String             = 'Cyan'
  Default            = 'DarkGray'
}


##---------------------------------------
## useful snippet for seeing what colours look like in your current Windows Terminal theme
##---------------------------------------
# [Enum]::GetValues([ConsoleColor]) | ForEach-Object { Write-Host "$_" -ForegroundColor $_ }
