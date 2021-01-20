## 变量的定义
yourname='zhangyk';

## 两种输出定义变量的方式
echo $yourname;
echo ${yourname};

## for 循环中,上面两种输出变量的不同
for info in a b c d;do
echo $info;
echo 'i am $info';
echo "i am ${info}";
done;

## 变量的重新赋值
yourname='zhangyk2';
echo ${yourname};

## 只读变量。无法修改
readonly myname='zhangsan';
echo ${myname};
## myname='lisi';

## 输出字符长度
echo ${#myname} ## print:8

## 提取字符串
string="This is a string param";
echo ${string:0:4}; ## print:This
url='http://www.cainiao/123.com';
echo ${url#*//}; ##print www/cainiao/123.com
echo ${url##*/}; ## print 123.com;
echo ${url%/*}; ## print http://www.cainiao;
echo ${url%%/*} ## print http:


## 查下标
echo `expr index "${string}" a`; ## print:9

## 数组
arr=(1,2,3,4,5);

 ##输出全部数组内容
 echo ${arr}; ## pint 1,2,3,4,5;
 echo ${arr[@]}; ## print 1,2,3,4,5;
 echo ${arr[*]}; ## print 1,2,3,4,5
 
 ##数组重新定义。相当于arr重新定义。原来的arr[2]以后的这些位数的数字也不存在了。
 arr[0]=10;
 arr[1]=9;
 echo ${arr[@]}; ##print 10 9

 ## 数组的长度
 echo ${#arr[@]}; ##print 2
 echo ${#arr[*]}; ##print 2

echo '$()和 ``测试--------'
echo $(ls)
echo $(expr 1 + 2)
echo `expr ${arr[0]} + 1`
##向脚本传递参数
echo '----------$*'
params=$*;
echo ${params};
for z in $* ;do
echo '测试--$*'
echo ${z};
done;

echo '-------------$@'
params2=$@;
echo ${params2};
for k in ${params2};do
echo '测试--$@'
echo ${k};
done; 

echo '--------------$0，$1-$n';
echo $0;
echo $1;
echo $2;

echo '-------------$#'
echo $#

#两种扩展计算方式。进行整数计算
echo $((4 + 5))
echo $[ 4 + 5 ]

## 取反判断
if [[ ! -n $a ]];then
echo "$a 为1"
fi
