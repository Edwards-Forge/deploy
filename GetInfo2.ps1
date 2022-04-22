$name = hostname
$apps = Get-Process

$name | Out-File -FilePath C:\AMD\Graphics\Dealer\Done\name2.txt
$apps | Out-File -FilePath C:\AMD\Graphics\Dealer\Done\apps2.txt
