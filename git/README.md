### Notes

In addition to the Git level proxy config, the shell environment where you run git commands may be able to use shell variables

`export HTTPS_PROXY`

`env GIT_SSL_NO_VERIFY=1 [git command]`

If you're on TELUS VPN, this is the series of commands you can use instead of clone

```powershell
set-location ${repos}
new-item -itemtype directory -name Repository00003
set-location $$
git init
git http-proxyon
git remote add github https://github.com/SalimGangji/Repository00003.git
git fetch github
git pull github main
```

Useful command for viewing git config: `git config --list --show-origin`