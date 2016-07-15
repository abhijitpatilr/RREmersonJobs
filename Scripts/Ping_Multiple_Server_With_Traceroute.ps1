
#+-------------------------------------------------------------------+  
#| = : = : = : = : = : = : = : = : = : = : = : = : = : = : = : = : = |  
#|{>/-------------------------------------------------------------\<}|           
#|: | Author:  Abhijit Patil`                                     | :|           
#| :| Email:   abhijitr.patil@emerson.com
#|: | Purpose: Periodic ping all of the production servers     
#|: |                    Date: 10-June-2016        
#| :| 	    						 							  |: | 
#|{>\-------------------------------------------------------------/<}|
#| = : = : = : = : = : = : = : = : = : = : = : = : = : = : = : = : = |
#+-------------------------------------------------------------------+

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
### ### End of Script
