$servers = "icda-101.prod.sensi","BS-106-PRD","BS-108-PRD","BS-109-PRD","rmq-106.prod.sensi","rmq-105.prod.sensi","rmq-104.prod.sensi","rmq-103.prod.sensi","rmq-101.prod.sensi"

foreach ( $server in $servers ) {
		
		if ((test-Connection -ComputerName $server -Count 2 -Quiet) -eq $true ) { 
				
			write-Host "$server is alive and Pinging `n " -ForegroundColor Green
			
		
					} else { 
					
					Write-Host "========================= Testing Done for all Servers ========== `n" -ForegroundColor Yellow
					"`n"
					"`n"
					
					write-Host " `"Computer $server not Pinging, i am going to do traceroute now.`" `n`n" -ForegroundColor RED 
		
					Write-Host "========================= Starting Traceroute for $server ========== `n" -ForegroundColor Yellow
					tracert -d  $server 
					Write-Host "========================= Traceroute for $server Done ========== `n" -ForegroundColor Yellow
					
			<#Mailer(vijay.bharekar@emerson.com);#>
					}			
					
}
<#
Function Mailer ($emailTo){
$message = @"
                                
"@       

$smtpserver="smtp.gmail.com"
$smtp=new-object Net.Mail.SmtpClient($smtpServer)
$emailFrom="abhijit1985@gmail.com"
$emailTo="vijay.bharekar@emerson.com"
$subject="Test"
$message="All servers are working"
$smtp.Send($emailFrom, $emailTo, $subject, $message)
#>

	### ### End of Script
