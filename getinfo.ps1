$name = hostname
$apps = Get-Process

$name | Out-File -FilePath C:\AMD\Graphics\Dealer\Done\name.txt
$apps | Out-File -FilePath C:\AMD\Graphics\Dealer\Done\apps.txt
