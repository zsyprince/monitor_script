tshark -i any -n -t a -R http.request -T fields -e "frame.time" -e "ip.src" -e "http.request.method" -e "http.host"  -e "http.request.uri"
