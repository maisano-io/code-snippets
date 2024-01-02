Change the DNS via PowerShell:

Get-NetAdapter | ForEach-Object { Set-DnsClientServerAddress -InterfaceIndex $_.InterfaceIndex -ServerAddresses ("8.8.8.8","1.1.1.1") }
