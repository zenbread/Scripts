#!/bin/bash



#Gives you the services and how many systems are running them.
cat NMAP_all_hosts.txt |  grep open | grep -vE 'OSScan' | awk '{print $3}' | sort | uniq -c | sort -rn


#Pull services with IP's running them.
services=$(cat NMAP_all_hosts.txt | grep open | grep -vE 'OSScan' | awk '{print $3}' | sort -u)

for x in $services; do
	a=$(cat NMAP_all_hosts.txt |awk '/Nmap scan/,/MAC Add/' | grep -v "Host\|PORT\|Not\|MAC" | awk '{print $NF}' | sed '/192/ i \\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n' | grep -B 18 $x | \
	grep  '192.168')
	printf "%s\n==================================================\n%s\n\n\n" "$x" "$a"
done

