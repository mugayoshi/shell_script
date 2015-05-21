#!/bin/bash

str=""
for f in *.jar
do
    if [ "$f" != "classes-dex2jar.jar" ]
    then
	#a[p]=$f
	#p=$((p+1))
	str="${str} ${f}"
    fi
done

echo $str
# str1="com.jar"
# dx --dex --output="classes.dex" ${str1} "res.jar"
# dx --dex --output="classes.dex" "com.jar" "res.jar"
export _JAVA_OPTIONS="-Xms1g"
dx --dex --output="classes.dex" $str
echo "done"
