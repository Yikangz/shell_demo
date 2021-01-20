:<<!
注释开始
1，if elif else 流程判断
2,(())与 [[]] 区别
3，(())是一种数学计算命令，它除了可以进行最基本的加减乘除运算，还可以进行大于、小于、等于等关系运算，以及与、或、非逻辑运算
4，[[]]，不支持<= >=关系运算符。需要用 -le：小于等于  -ge>=大于等于代替
5,当 if 和 then 位于同一行的时候，: 这个分号是必须的，否则会有语法错误。
!
printf "input age number :"
read age
if (( $age < 3 && $age > 0 ));then
echo "${age}是婴儿";
## [[ $age -ge 3 && $age < 12 ]]; !!不支持一遍是关系运算符一边是数字运算符
elif [[ $age -ge 3 && $age -lt 12 ]];then  
echo "${age}是小孩";
elif (($age >= 12 && $age < 18));then
echo "${age}是青少年";
else
echo "${age}是成年人"
fi


## 再[[]]使用<=会报错，[[]]不支持这个而关系运算符
:<<!
a=10;
if [[ $a <= 10 && $a != 0 ]];then
echo "$a等于10并且不等于0";
fi;
!

a=5;
if [[ $a -le 5 && $a != 0 ]];then
echo "$a等于10并且不等于0";
fi;

filepath="/data/daily/shell_test/"

#if [[ -d $filepath ]];then
#echo '这是一个目录';
#else 
#echo '这不是一个目录'
#fi

if (( -d $filepath ));then
echo '这是一个目录';
else 
echo '这不是一个目录'
fi
:<<!
注释
!
name='zhangsan';
echo '字符串比较运算符 -n';
if [[ -z "$name" ]];then
    echo $name
else 
    echo 'name不为空'
fi
name1='123'
echo '字符串比较运算符-z'
if [[ -n "$name1" ]];then
    echo $name1
else 
    echo 'name1不为空'
fi

ab=10;
c=11;
if test $ab != $c && test 10 == 10
then
echo 'ab == c';
else 
echo 'ab != c';
fi;

if [[ $ab != $c ]] && [[ 10 == 10 ]]
then
echo 'ab == c';
else 
echo 'ab != c';
fi

