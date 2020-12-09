$SmtpServer = 'smtp.live.com'
$SmtpUser = 'user@outlook.com'
$smtpPassword = 'password'
$MailtTo = 'recipient@gmail.com'
$MailFrom = 'user@outlook.com'
$MailSubject = "SERVER BACKUP"
$Body =”
$TimeGenerated
$Source
$EntryType
$Message
$Message2”
$Credentials = New-Object System.Management.Automation.PSCredential -ArgumentList $SmtpUser, $($smtpPassword | ConvertTo-SecureString -AsPlainText -Force) 
Send-MailMessage -To "$MailtTo" -from "$MailFrom" -Subject $MailSubject -Body $Body -SmtpServer $SmtpServer -UseSsl -Credential $Credentials