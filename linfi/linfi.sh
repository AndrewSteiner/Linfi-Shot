#!/bin/bash
#
# Priya Gopani
# Andrew Steiner 
# main script to monitor files


bak=$(auditctl -l)

echo $bak

auditctl -D

# Add your own files to monitor them!
files=(/boot/vimlinux/ /boot/vmlinuz /etc/bashrc /etc/crontab /etc/hosts /etc/hosts.allow /etc/host.deny /etc/group /etc/inittab /etc/passwd /etc/resolve.conf /proc/cpuinfo /proc/filesystems /etc/init.d /etc/profile.d /etc/rc.d/init.d /etc/shadow /tmp/)


# creating rules to monitor files
for i in "${files[@]}"; do
	auditctl -w $i -k $i
	echo $i
done

auditctl -l

read -p "Press enter after you've installed/run the test program..."

touch ausearchOut
# Loop through all the rules, and search for recent events.
# output csv, and to console
for i in "${files[@]}"; do
	
       	echo "**************************************************************************************"
	echo "**************************************************************************************"	
	echo                                          $i
	echo "**************************************************************************************"
	echo "**************************************************************************************"
	
	#res=$(ausearch -k $i)

	#echo $res | aureport -au
	#echo $res | aureport 
	# Report about files and af_unix sockets	
	#echo $res | aureport -f 
	
	ausearch -k $i --start recent --format csv >> ausearchOut

	awk '!/NODE,EVENT,/' ausearchOut > temp && mv temp ausearchOut
done

auditctl -D

./plot.py

while IFS= read; do sudo auditctl $REPLY
done <<< "$bak"

