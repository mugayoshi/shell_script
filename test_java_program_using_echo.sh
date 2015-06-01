#!/bin/bash
echo "input:string: "
read input_str

echo "program name: "
read program_name

echo "test $program_name" 
echo $input_str | java $program_name
