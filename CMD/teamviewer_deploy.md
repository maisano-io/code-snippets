This method is shonky and used PowerShell + CMD, but it works.

Invoke-WebRequest -Uri "https://marketcreations.sharepoint.com/:u:/g/ti/EbbD0XBoeOdImh7vonwwDEQBlEPbaZknbwBrl6yVP75ZHw?e=6jRmlL&download=1" -OutFile "TeamViewer.msi"


msiexec /i TeamViewer.msi /qn CUSTOMCONFIGID=6jt9xkb APITOKEN=0001CoABChB9pSSgY_sR7qYycXJWZLxtEigIACAAAgAJAPHAC_mUAk4Iwnkz37WWPvfx02-pA-wup0fiSThMvWZGGkC7tVxlJHWi_bvWX9HQX4lNl8YNsfX3wB2NygJss2LRNC7fMdlf6Ijjjiv1M8N9s-VikBvzJ3CIvWGn1HiUKmjoIAEQ1LvomgI= ASSIGNMENTOPTIONS="--alias %COMPUTERNAME% --grant-easy-access --reassign"