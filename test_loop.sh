:<<!
注释
1，测试for循环
2，while循环
3，case
!

## for打印统计目录下的所有文件名
arr=$(ls);
for filename in $arr ; do
echo $filename;
done;

## while
num=10 
while [[ $num -gt 0 ]]
do
echo "num:$num";
#let "num--";
#num=`expr $num - 1 `
((num--))
done;

## while

echo "num2---"
read num2;
while (( num2 > 0 ))
do
let "num2--";
echo "num2:${num2}";
done;

## 判断输入数字
echo "输入1-4之间的数字num3";
read num3
case $num3 in
1) echo '你选择了1';
;;
2) echo '你选择了2';
;;
3) echo '你选择了3';
;;
4) echo '你选择了4';
;;
*) echo '你选择不是1-4的数';
;;
esac;

## 判断输入数字第二种写法
echo "输入1-4之间的数字num4";
read num4
case $num4 in
1|2|3|4) echo "你选择了${num4}";
;;
*) echo '你选择不是1-4的数';
;;
esac;


