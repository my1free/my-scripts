

## 递归展示某个目录下所有文件

Usage:
```bash
sh list_files.sh [dir]
```
Example:

```bash
sh list_files.sh ~/Downloads/incubator
```
Output
```
/Users/qijin/Downloads/incubator/mvnw
/Users/qijin/Downloads/incubator/mvnw.cmd
/Users/qijin/Downloads/incubator/pom.xml
/Users/qijin/Downloads/incubator/src/main/java/tech/qijin/incubator/IncubatorApplication.java
```

## 对比多个文件的异同

Requirements：
1. 对比文件的文件名需要相同
2. 对比文件的相对路径(相对于传入的参数)需要相同

注：
1. 这里的对比是比较两个文件的md5值。md5值相同，则认为两个文件相同
2. 第一个参数作为基准。也就是说，如果一个文件只存在于第二个参数中，那么不做对比

Usage:
```
sh diff_files.sh [path1] [path2]
```

Example:
```
sh diff_files.sh ~/dir1 ~/dir2
```

Output:
1. 文件内容相同的，会有"[SUCCESS]"字样，打印在控制台
2. 文件内容不同的，会使用vimdiff打开两个文件。使用者可根据需要，操作两边的文件


