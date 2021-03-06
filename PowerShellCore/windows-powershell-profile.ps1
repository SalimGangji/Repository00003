##---------------------------------------
## Downloading modules - run these once in an adminstrator terminal
##---------------------------------------
#set-executionpolicy -scope localmachine -executionpolicy remotesigned
#install-module posh-git -scope currentuser
#install-module oh-my-posh -scope currentuser
#install-module googlecloud

##---------------------------------------
## Overwriting the profile when any changes are applied
##---------------------------------------
# copy-item -path [updated-profile] -destination $profile

##---------------------------------------
## Theming
##---------------------------------------
#import-module posh-git
#import-module oh-my-posh
#set-poshprompt -theme PowerLevel10k_Classic

##---------------------------------------
## Variables
##---------------------------------------
$devMaster = "C:\DevMaster"
$repos = "${devMaster}\repos"

##---------------------------------------
## Aliases
##---------------------------------------
New-Alias ll "get-childitem"

##---------------------------------------
## gcp
##---------------------------------------
import-module googlecloud
