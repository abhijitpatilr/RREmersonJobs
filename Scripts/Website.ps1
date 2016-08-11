#+-------------------------------------------------------------------+  
#| = : = : = : = : = : = : = : = : = : = : = : = : = : = : = : = : = |  
#|{>/-------------------------------------------------------------\<}|           
#|: | Author:     Abhijit Patil
#|: | Supervisor: Nikhil Deshpande                                | :|           
#| :| Email:      abhijitr.patil@emerson.com
#|: | Purpose:    Check Site Up or Down     
#|: |             Date: 10-June-2016        
#| :| 	                                 						  |: | 
#|{>\-------------------------------------------------------------/<}|
#| = : = : = : = : = : = : = : = : = : = : = : = : = : = : = : = : = |
#+-------------------------------------------------------------------+


function Show-MessageBox ($title, $msg) {     
    [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") | Out-Null 
    [Windows.Forms.MessageBox]::Show($msg, $title, [Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Warning, [System.Windows.Forms.MessageBoxDefaultButton]::Button1, [System.Windows.Forms.MessageBoxOptions]::DefaultDesktopOnly) | Out-Null     
} 

[string] $url = 'https://www.comfortguardpro.com'

[net.httpWebRequest] $req = [net.webRequest]::create($url)
$req.Method = "HEAD"

[net.httpWebResponse] $res = $req.getResponse()

if ($res.StatusCode -ge "200") {
  write-host "`nSite up`n" `
    -foregroundcolor green
}
else {
  Show-MessageBox -title "Warning!" -msg "Site down!!!"
  write-host "`nSite down`n" `
    -foregroundcolor red
}
