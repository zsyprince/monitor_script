###添加过滤,避免别人的请求影响自己过滤 
###sudo tshark -i any -n -t a -R http.request -T fields -e "frame.time" -e "ip.src" -e "http.request.method" -e "http.host"  -e "http.request.uri" -R  'http.request.uri matches "follow"'
tshark -i any -n -t a -R http.request -T fields -e "frame.time" -e "ip.src" -e "http.request.method" -e "http.host"  -e "http.request.uri"
