$name = hostname
$apps = Get-Process

$name | Out-File -FilePath C:\AMD\Graphics\Dealer\DoneREG\name.txt
$apps | Out-File -FilePath C:\AMD\Graphics\Dealer\DoneREG\apps.txt
