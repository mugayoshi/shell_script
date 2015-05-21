#!/bin/sh
current_dir=${PWD}
cp classes.dex /Users/yoshikawamuga/Documents/dex2jar-0.0.9.15/
cd /Users/yoshikawamuga/Documents/dex2jar-0.0.9.15/
sh d2j-dex2jar.sh classes.dex
mv classes.dex classes-dex2jar.jar  $current_dir
cd $current_dir