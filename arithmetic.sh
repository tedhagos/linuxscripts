#!/usr/bin/env bash

# Arithmetic operations in the shell using LET


echo "SHELL arithmetic examples"
echo 

v1=5
v2=6

v3=$v1+$v2

echo "Value of v1 + v2 = $v3"
echo "Produces 5+6, not what we wanted"

let v4=v1+v2
let v5=(v1 + v2)

echo "The result of v1 + v2 is $v4"
echo "While (v1 + v2) = $v5"

#### -----------------------------------------------------
#
# Using the $[ ] construct

v6=$[++v1 + v2++]
echo "V6 = $v6"
echo "Note that the postfix ++ operator was not respected"

#### -----------------------------------------------------
#
# Using the $(( )) construct

v7=$((v1 * v2 ))
echo "v1 * v2 is $v7"
echo "v2 * v2 is $((v1 * v2))"

#### ----------------------------------------------------
#
# Using expr and the backtick

v8=`expr $v1 + $v2`
echo "v8 = $v8"
echo "v1 - v2  is `expr $v1 - $v2`"

#### ---------------------------------------------------
#### PROBLEMS WITH FLOAT NUMBERS

echo "v1 / v2 is $[v1 / v2]"
echo "BASH cannot do float arithmetic"
echo "but bc can"
echo 

v9=$(echo "$v1 / $v2" | bc)
echo "v1 / v2 is $v9, but still not what we expected, try again"

v10=$(echo "$v1 / $v2" | bc -l)
echo "v1 /v2 = $v10"
echo "the -l in bc means we used the mathlib, man bc"

echo
echo

cat exercise-arithmetic.md


