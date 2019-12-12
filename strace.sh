strace -ttT -f  -p `ps -ef|grep "pool www"|grep -v grep|awk -F " " '{print $2}'`
 
