#!/usr/bin/env bash
#
# On Arrays
# NOTE: BASH < 4.0v cannot do associative arrays
# echo $BASH_VERSION, if you are not sure about your BASH


a1=(1 2 3 4 5 6 7 8)

echo "first element of the array is ${a1[0]}"
echo "Length of array is ${#a1[*]}"
echo

printf "Print all elements as list : "
echo ${a1[@]}
echo

printf "You can also print all elements like this : "
echo ${a1[*]}
echo

a1[8]="A String"
echo ${a1[8]}
echo


a1[10]="Skipped a beat"
echo ${a1[10]}
echo "Length of array now is ${#a1[*]}"
echo 


#### --------------------------------------------------------

echo "Using arrays in for loops"
echo; echo


for var in ${a1[@]}
do
  echo $var
done


#### -------------------------------------------------------

echo "EXERCISES"
echo; echo

cat exercise-arrays.md



