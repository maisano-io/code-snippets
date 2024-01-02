# User-configurable variables
$remotePcName = "G1-GG1-RD01"
$gatewayName = "remote.gateway.com.au"
$redirectPrinters = $true
$allowCredSaving = $true
$useAllMonitors = $true

# Convert boolean values to RDP file format
$redirectPrintersValue = if ($redirectPrinters) { "1" } else { "0" }
$allowCredSavingValue = if ($allowCredSaving) { "1" } else { "0" }
$useAllMonitorsValue = if ($useAllMonitors) { "1" } else { "0" }

# Define the RDP file content
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
$desktopPath = [System.Environment]::GetFolderPath("Desktop")
$rdpFilePath = "$desktopPath\$remotePcName.rdp"

# Create the RDP file
$rdpContent | Out-File -FilePath $rdpFilePath -Encoding ASCII