Get-NetAdapter | ForEach-Object { Set-NetIPInterface -InterfaceAlias $_.Name -Dhcp Enabled }