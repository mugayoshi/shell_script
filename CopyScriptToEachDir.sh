#!/bin/bash
for D in *;do 
    if [ -d "${D}" ]; then
        echo "${D}"   # your processing here
        cp cellphone_txt.sh ${D}
    fi
done
