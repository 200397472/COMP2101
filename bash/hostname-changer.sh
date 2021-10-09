#!/bin/bash
hostnameofPC=$(hostname)
echo "Current system hostname is $hostnameofPC"

read -p "Insert your student number: " studentnumber

string1="pc"

finalstdnumber=$string1$studentnumber

sed -i "s/$hostnameofPC/$finalstdnumber/" /etc/hosts

if [[ $hostnameofPC != $finalstdnumber ]]
then 
	hostnamectl set-hostname $finalstdnumber
fi
	
echo "Hostname is changed to $finalstdnumber from $hostnameofPC"

echo "Restart your UBUNTU linux to get full effect of the script.."
