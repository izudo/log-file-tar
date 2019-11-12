#!/bin/bash

list=`ls *.log`
for var in $list
do
    if [ -f $var.tar.gz ];then
        tar -zxf $var.tar.gz -O > tmp
        cat tmp $var > tmp_
        rm $var
        mv tmp_ $var
        rm $var.tar.gz
        rm tmp
    fi
    tar -zcf $var.tar.gz $var
    echo $var.tar.gz
    rm $var
done
