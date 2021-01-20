:<<!
1，无线循环跳出
!
while :
do
echo "请输入10以上的数:"
read num;
case $num in
 1|2|3|4|5|6|7|8|9|10) echo "你输入的数是:${num}"
;;
*) echo "你输入的数是10以上的数,游戏结束"
break
##continue
;;
esac;
done;
	
