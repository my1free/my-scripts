linux监控脚本


linux 教程: http://ju.outofmemory.cn/entry/294090
1.CPU占用最多的前10个进程： 

ps auxw|head -1;ps auxw|sort -rn -k3|head -10 

2.内存消耗最多的前10个进程 

ps auxw|head -1;ps auxw|sort -rn -k4|head -10 

3.虚拟内存使用最多的前10个进程 

ps auxw|head -1;ps auxw|sort -rn -k5|head -10 
