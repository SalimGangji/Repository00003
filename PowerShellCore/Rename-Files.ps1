$old = "May"
$new = "June"
$files = $( Get-ChildItem -Exclude "*.pdf" | Where-Object { $_.GetType() -match "FileInfo" } )
$files | ForEach-Object { Rename-Item -Path $_.FullName -NewName $( [System.Text.RegularExpressions.Regex]::Replace($_.FullName, $old, $new) ) }
