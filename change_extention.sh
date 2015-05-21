#!/bin/bash
echo -n "input extentions( *.arg1 --> *.arg2): "
read ex1 ex2
dir=${PWD##*/}
mkdir copy_$dir
cp *.$ex1 ./copy_$dir
cd ./copy_$dir
for f in *.$ex1
do
    mv -- "$f" "${f%.$ex1}.$ex2"
done
cd ../
#mv *.$ex2 ./copy
