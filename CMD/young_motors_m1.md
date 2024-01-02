Quick fix for the One Mazda DNS issues:

echo 104.16.116.61 www.mazda.com.au >> %SystemRoot%\System32\drivers\etc\hosts
echo 10.3.112.4 sts.mazda.com.au >> %SystemRoot%\System32\drivers\etc\hosts
echo 10.3.112.2 prd-erp-dealer.mazda.com.au >> %SystemRoot%\System32\drivers\etc\hosts
echo 10.3.112.5 oos.mazda.com.au >> %SystemRoot%\System32\drivers\etc\hosts
echo 10.3.112.3 one.mazda.com.au >> %SystemRoot%\System32\drivers\etc\hosts