#!/bin/bash

RecyclePath="$HOME/Recycle"

timeNow=`date +"%Y%m%d"`

name=`echo $1 | sed -e "s/\///g"`

count=`ls $RecyclePath | grep $name | wc -l`

((No=$count+1))

if [ $count -gt 0 ];then
    targetName=${timeNow}_${name}_${No}
else
    targetName="${timeNow}_${name}"
fi

mv $1 $RecyclePath/$targetName
