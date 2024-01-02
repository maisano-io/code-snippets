Deploy Firefox silently.

$url = "https://download-installer.cdn.mozilla.net/pub/firefox/releases/106.0.4/win32/en-US/Firefox%20Setup%20106.0.4.exe"
$localPath = "C:\Firefox Setup 106.0.4.exe"
$webClient = New-Object System.Net.WebClient
$webClient.DownloadFile($url, $localPath)
$installerArguments = "/S /PreventRebootRequired=true"
Start-Process -FilePath "$localPath" -Args $installerArguments -Wait -NoNewWindow
Remove-Item -Path $localPath