:: Quick fix for DNS issues: This script adds a custom DNS entry to the hosts file.

:: The 'echo' command is used to append the new DNS record to the hosts file.
:: Replace '123.45.67.89' with the desired IP address and 'example.com' with the required domain.

echo 123.45.67.89 example.com >> %SystemRoot%\System32\drivers\etc\hosts

:: End of script.