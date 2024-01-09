#CREATE BULK USERS WITH CSV FILE

$password = ConvertTo-SecureString 'Testuser@345' -AsPlainText -Force

Import-Csv -Path "C:\Users\DELL PC\Desktop\POWERSHELL  FILES\CSV FILES\Azure users@cloud433.csv" | `
foreach { New-AzADUser `
-DisplayName $_.DisplayName `
-MailNickname $_.MailNickname `
-UserPrincipalName $_.UserprincipalName `
-Password $Password }
