alias ifconfig="/sbin/ifconfig"
while true; do
RXscrpint="ifconfig eth0 | grep 'RX packets'|awk '{print \$5}'"
TXscrpint="ifconfig eth0 | grep 'TX packets'|awk '{print \$5}'"
RXpre=$(eval $RXscrpint)
TXpre=$(eval $TXscrpint)
sleep 1
RXnext=$(eval $RXscrpint)
TXnext=$(eval $TXscrpint)
###RX==receive，接收，从开启到现在接收封包的情况，是下行流量。

##TX==Transmit，发送，从开启到现在发送封包的情况，是上行流量。
echo RX ----- TX
echo "$((((${RXnext}-${RXpre})/1024)/1024*8))Mb/s $((((${TXnext}-${TXpre})/1024/1024*8)))Mb/s"
done
