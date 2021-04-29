#!/bash/shell
function t(){
 res=`curl -s http://baidu.com`
 echo $res
}
echo `t 1`
