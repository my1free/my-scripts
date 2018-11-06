#!/bin/bash
# 将cpu占用超过50%的进程信息输出到cpu_monitor.res文件中
# output the process which used more than 50% cpu into file cpu_monitor.res
while true;
do
	echo `date "+%Y/%m/%d %T"========` >> cpu_monitor.res
	ps auxw|sort -rn -k5|head -5 | awk -F' ' '{if($3>50) print $0}' >> cpu_monitor.res
	sleep 1
done;
