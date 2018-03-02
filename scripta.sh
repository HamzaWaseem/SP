#!/bin/bash
read -p "ENTER first number : " n1

if [[ "$n1" =~ ^[0-9]+$ ]]

then

	read -p "ENTER second number : " n2

	if [[ "$n2" =~ ^[0-9]+$ ]]

	then

		echo "Addition of numbers is : " `expr $n1 + $n2` 

		echo "Subtraction of numbers is : " `expr $n1 - $n2`

		echo "Multiplication of numbers is : " `expr $n1 \* $n2`
	
		if [ $n2 = 0 ]

		then
			echo "Second number is less than 0 so division not possible"

		else

			echo "Division of numbers is : " `expr $n1 / $n2`

		fi
	else
		echo "second number is not an integer"
	fi
else
	echo "first number is not an integer"
fi
