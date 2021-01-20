:<<!
1,测试函数
!
getFileList(){
	echo "获取文件列表";
	arr=`ls`;
	needarr=();
	for file in $arr ;do
#	echo ${file};
	## 如果是文件则放入needarr
	echo "/data/daily/shell_test/${file}"
	if [[ ! -d "/data/daily/shell_test/${file}" ]] ;then
	needarr+=("${file}");
	fi;
	done;
	echo ${needarr[@]}
};
getFileList
echo "$*"

## 获取func的返回值
sumNum(){
a=10;
b=11;
return `expr ${a} + ${b} `;
};
sumNum;
echo "a+b的值为:$?"

