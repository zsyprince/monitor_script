1.分析phptrace日志里面 执行时间大于指定时间的内容
cat aaa |grep -v vendor|grep -v "~ 0.000s"|grep "~"|awk -F "~" '{print $2,$0}'|awk -F " " '{if($1>0.1){print $0}}'
2.tcplstat -i ens33 -f 'tcp' --http 可以监听所有http请求，比如一个api里面调用了多少http连接都可以有好的展示出来
3.sort -nr -k 2 -t'<' test.info |head -n20 指定排序
