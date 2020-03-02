#!/bin/bash

#echo "hi"

HELLO="hi becca"

echo $HELLO
#variable a,b
a=1
b=2
echo $a,$b

#arithmetic operations
c=$(( a+b ))
echo "a+b" is $c
echo "a-b" is $(( a-b ))
echo "a*b" is $(( a*b ))


myfiles=$( ls ~/ | wc -l )
echo $myfiles

#user input, get two numbers
echo "enter your first number:"
read firstnumber
echo "Enter your second number:"
read secondnumber

echo $firstnumber
echo $secondnumber

#conditionals 
if [ $firstnumber -gt $secondnumber ]
then
echo $firstnumber "is the larger number"
fi

#for loop
aligners='bwa star bowtie tophat trinity'
for item in $aligners
do
echo $item
done

#function to convert celcius to fahrenheit
function ctof
{
ft=$(( $1 * (9/5) + 32 ))
echo $ft
}

#call the function
ctof 37





