#+-------------------------------------------------------------------+  
#| = : = : = : = : = : = : = : = : = : = : = : = : = : = : = : = : = |  
#|{>/-------------------------------------------------------------\<}|           
#|: | Author:     Abhijit Patil
#|: | Supervisor: Nikhil Deshpande                                | :|           
#| :| Email:      abhijitr.patil@emerson.com
#|: | Purpose:    Check Memory and Swap details 
#|: |             Date: 8-August-2016        
#| :| 	                                 						  |: | 
#|{>\-------------------------------------------------------------/<}|
#| = : = : = : = : = : = : = : = : = : = : = : = : = : = : = : = : = |
#+-------------------------------------------------------------------+

#! /bin/bash

# Total memory space details

echo "Memory Space Details"
free -t -m | grep "Total" | awk '{ print "Total Memory space : "$2 " MB";
print "Used Memory Space : "$3" MB";
print "Free Memory : "$4" MB";
}'

echo "Swap memory Details"
free -t -m | grep "Swap" | awk '{ print "Total Swap space : "$2 " MB";
print "Used Swap Space : "$3" MB";
print "Free Swap : "$4" MB";
}'
