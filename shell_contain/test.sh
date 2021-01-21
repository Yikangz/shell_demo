## 包含contain.sh文件
## .和文件名中间隔了一个空格。
. contain.sh
echo "contain name is ${name}";  ## 没有定义的name。既没有包含在其他文件，也没有定义则不会被识别
echo "contain rname is ${rname}"; ## contain.sh 文件定义rname;
rname="lisi";
echo "rename rname is ${rname}";#变量覆盖