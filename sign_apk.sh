#!/bin/bash
num=`ls -l *.apk | wc -l`
current_dir=${PWD}
echo "Enter File Name \nex: app_signed.apk"
read file
for f in *.apk
do
    mv "$f" /Users/yoshikawamuga/Documents/dex2jar-0.0.9.15/
    cd /Users/yoshikawamuga/Documents/dex2jar-0.0.9.15/
    d2j-apk-sign.sh -f -o "$file" "$f"
    mv "$file" $current_dir
    cd $current_dir
done




