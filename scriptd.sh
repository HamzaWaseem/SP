#!/bin/bash
arrayContent=(`cat "names"`)
echo ${arrayContent[*]}
echo "Length is: " ${#arrayContent[@]}
echo "Third is : " ${arrayContent[2]}
