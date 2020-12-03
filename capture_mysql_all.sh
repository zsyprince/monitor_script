#tshark -s 512 -i any -n -f 'tcp port 3319' -R'mysql.query' -T fields -e mysql.query
sudo tshark -s 512 -i any -d tcp.port==3319,mysql -T fields -e mysql.query -R'mysql.query'
