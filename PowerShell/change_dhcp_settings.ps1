# This PowerShell script enables DHCP on all network adapters found on the system.

# The 'Get-NetAdapter' cmdlet retrieves the network adapter properties.
# This is piped to the 'ForEach-Object' cmdlet, which processes each network adapter found.

Get-NetAdapter | ForEach-Object {
    Set-NetIPInterface -InterfaceAlias $_.Name -Dhcp Enabled
}

# End of script.