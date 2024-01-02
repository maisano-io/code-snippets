# This script is designed to create a Remote Desktop Protocol (RDP) file with specific configurations.

# User-configurable variables
# These variables can be adjusted as needed to configure the remote desktop connection.
$remotePcName = "G1-GG1-RD01"           # Name of the remote PC.
$gatewayName = "remote.gateway.com.au"  # Gateway for remote connection.
$redirectPrinters = $true               # Boolean to enable/disable printer redirection.
$allowCredSaving = $true                # Boolean to allow/disallow saving credentials.
$useAllMonitors = $true                 # Boolean to enable/disable the use of all monitors.

# Convert boolean values to RDP file format
# These lines convert the boolean values to '1' (true) or '0' (false) for the RDP file settings.
$redirectPrintersValue = if ($redirectPrinters) { "1" } else { "0" }
$allowCredSavingValue = if ($allowCredSaving) { "1" } else { "0" }
$useAllMonitorsValue = if ($useAllMonitors) { "1" } else { "0" }

# Define the RDP file content
# This heredoc (@"... "@) defines the content of the RDP file with the configured settings.
$rdpContent = @"
screen mode id:i:2
use multimon:i:$useAllMonitorsValue
desktopwidth:i:1280
desktopheight:i:1024
session bpp:i:24
winposstr:s:0,1,0,0,800,600
full address:s:$remotePcName
compression:i:1
keyboardhook:i:2
audiomode:i:0
redirectdrives:i:1
redirectprinters:i:$redirectPrintersValue
redirectcomports:i:0
redirectsmartcards:i:1
displayconnectionbar:i:1
autoreconnection enabled:i:1
authentication level:i:2
prompt for credentials:i:0
promptcredentialonce:i:0
enablecredsspsupport:i:$allowCredSavingValue
negotiate security layer:i:1
remoteapplicationmode:i:0
alternate shell:s:
shell working directory:s:
gatewayhostname:s:$gatewayName
gatewayusagemethod:i:2
gatewaycredentialssource:i:4
gatewayprofileusagemethod:i:0
use redirection server name:i:0
"@

# Path to save the RDP file
# These lines define the path where the RDP file will be saved, typically on the user's desktop.
$desktopPath = [System.Environment]::GetFolderPath("Desktop")
$rdpFilePath = "$desktopPath\$remotePcName.rdp"

# Create the RDP file
# This line creates the RDP file at the specified path with the defined content.
$rdpContent | Out-File -FilePath $rdpFilePath -Encoding ASCII