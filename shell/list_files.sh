#!/bin/bash
#!/bin/bash
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

lsdir $1
