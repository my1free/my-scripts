

## �ݹ�չʾĳ��Ŀ¼�������ļ�

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

## �Աȶ���ļ�����ͬ

Requirements��
1. �Ա��ļ����ļ�����Ҫ��ͬ
2. �Ա��ļ������·��(����ڴ���Ĳ���)��Ҫ��ͬ

ע��
1. ����ĶԱ��ǱȽ������ļ���md5ֵ��md5ֵ��ͬ������Ϊ�����ļ���ͬ
2. ��һ��������Ϊ��׼��Ҳ����˵�����һ���ļ�ֻ�����ڵڶ��������У���ô�����Ա�

Usage:
```
sh diff_files.sh [path1] [path2]
```

Example:
```
sh diff_files.sh ~/dir1 ~/dir2
```

Output:
1. �ļ�������ͬ�ģ�����"[SUCCESS]"��������ӡ�ڿ���̨
2. �ļ����ݲ�ͬ�ģ���ʹ��vimdiff�������ļ���ʹ���߿ɸ�����Ҫ���������ߵ��ļ�


