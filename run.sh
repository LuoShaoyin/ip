#! /bin/bash
cd /home/luoshaoyinn/software/github_projects/ip
while true
do
	./update_ip.sh
	diff ip.txt ip2.txt > /dev/null
	if [ $? = 0 ]; then
		echo "ip didn't change"
		rm ip2.txt
	else
		rm ip.txt
		mv ip2.txt ip.txt
		./push.sh
	fi
	sleep 1200 # update every 20 minutes
done
