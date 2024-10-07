Remove-Variable * -Force -Scope global -ErrorAction SilentlyContinue
Import-Module activedirectory
Get-ADUser -Filter {samaccountname -eq "user.name"} -Properties * | select -ExpandProperty thumbnailphoto | Set-Content -Path "C:\Work\powershell\honThumb.jpg" -Encoding byte