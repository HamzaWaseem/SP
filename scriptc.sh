#!/bin/bash
## declare an array variable
declare -a UNIX=("Debian" "Red hat" "Ubuntu" "Suse" "Foredo")
#display array
echo "Array is : " ${UNIX[*]}
# get length of an array
arraylength=${#UNIX[@]}
echo "Length of array is : " $arraylength
#print 2nd number
echo "Second is : " ${UNIX[1]}
#extract 2 from 3rd
echo "EXTRACTION : " ${UNIX[@]:3:2}
#search & replace
echo "Search and replace : "${UNIX[@]/"Ubuntu"/"SCO"}
#add in array
temp=(${UNIX[*]} "AIX" "HP-UX")
echo "After adding 2 elements : " ${temp[*]}
#copy
LINUX=${UNIX[*]}
echo "LINUX (COPY ARRAY) IS : " $LINUX
#remove
unset UNIX[2]
echo ${UNIX[*]}
#conactenation
BASH=(${UNIX[*]} ${LINUX[*]})
echo "Concatenated Array is : " ${BASH[*]}
#deleting arrays
unset UNIX
unset LINUX


# use for loop to read all values and indexes
#for (( i=1; i<${arraylength}+1; i++ ));
#do
 # echo $i " / " ${arraylength} " : " ${array[$i-1]}
#done
