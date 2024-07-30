#! /bin/bash
source /home/luoshaoyinn/.profile
source /home/luoshaoyinn/.bashrc
cd /home/luoshaoyinn/software/github_projects/ip
while true
do
	./update_ip.sh
	diff ip.txt ip2.txt > /dev/null
	if [ $? = 0 ]; then
		echo "ip didn't change"
		rm ip_global2.txt ip2.txt
	else
		rm ip_global.txt
		rm ip.txt
		mv ip_global2.txt ip_global.txt
		mv ip2.txt ip.txt
		echo 0 > /home/luoshaoyinn/shit
		./push.sh
	fi
	sleep 600 # update every 10 minutes
done
