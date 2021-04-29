#!/bin/bash
#pid推送到中间库
pidStr="id=1206943160687540651&doctor_id=122350 id=1204004161274643790&doctor_id=122356 id=1202536654382651771&doctor_id=122356 id=1201165852907236696&doctor_id=131763 id=1202713971268655188&doctor_id=241023 id=1199687678440592384&doctor_id=227343 id=1192080208188759680&doctor_id=156090 id=1191056216480952570&doctor_id=153798 id=1192076968122468059&doctor_id=153852 id=1192080208188759680&doctor_id=156090 id=1192231253481241555&doctor_id=153798 id=1195429759415103496&doctor_id=154047 id=1196744294235198573&doctor_id=153798 id=1198081753208459759&doctor_id=215562 id=1201189283329607617&doctor_id=154215"
pidStr=1111
push_pid(){
    url="http://10.20.95.18:9052/aladdin/pigeonhole-simple?$1"
    echo ${url}
    res=$(curl ${url} |grep "code\":\"0\""|grep "data\":\[\]")
    if [[ -z ${res} ]];
    then
	    echo fail $1 
    else
	    echo success $1 
    fi
}
for param in $pidStr
do
   res=$(push_pid $param)
   echo "$res" 
done

#echo ${pidStr} | while read -r param; do a1=$(push_pid ${param});echo $a1; done

