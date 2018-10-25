#!/bin/bash

path1=$1
path2=$2

excludeFiles=()
excludeDir=(target)

arr1=()

function lsdir()
{
    local dir=$1
    for i in `ls $dir`;do
        if [ -d "$dir/$i" ] ;then
            lsdir $dir/$i
        else
            file=$dir/$i
            echo $file
        fi
    done
}

function excludeFile()
{
    file=$1
}
function excludeDir()
{
    dir=$1
}

function traverse()
{
    arr=$1
    for ele in ${arr[@]};do
        echo $ele
    done
}

function diffFile()
{
    file=$2
    srcFile=$1
    desFile=$path2$file
    if [ -f $desFile ];then
        srcMd5=`cat $srcFile | md5`
        desMd5=`cat $desFile | md5`
        if [ $srcMd5 = $desMd5 ];then
            echo "[SUCCESS] file name is: $file"
        else
            echo "[WARNING] file name is: $file"
            vimdiff $srcFile $desFile
        fi
    else
        echo "can not find file $desFile"
    fi
}

function diffAll()
{
    arr=$1
    for ele in ${arr[@]};do
        file=`echo $ele | awk -F"$path1" '{print $2}'`
        diffFile $ele $file
    done
}

res=`lsdir $path1 `
arr=(${res// / })
#traverse $arr
diffAll $arr
#vimdiff $path1/account-db/pom.xml $path2/account-db/pom.xml
