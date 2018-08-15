#!/bin/bash

RecyclePath="$HOME/Recycle"

timeNow=`date +"%Y%m%d"`

count=`ls $RecyclePath | grep $1 | wc -l`

((No=$count+1))

if [ $count -gt 0 ];then
    targetName="${timeNow}_${No}_$1"
else
    targetName="${timeNow}_$1"
fi

mv $1 $RecyclePath/$targetName
