tshark -s 512 -i ens33 -n -f 'tcp dst port 3306' -R 'mysql.query' -T fields -e mysql.query
