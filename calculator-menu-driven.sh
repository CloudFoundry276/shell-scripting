#!/bin/bash

#############################################################
# Date: 12/10/2023
# Author: Sagar Pitalekar
# Title: Shell Script Simple Menu Driven Calculator Case
# Description: In this shell script, we are creating simple 
#              menu driven calculator using case.
#############################################################

clear
echo "Simple Menu Driven Calculator Using Case"
echo "----------------------------------------"
echo "List of Available Options:"
echo -e "[a] => Addition\n[b] => Subtraction\n[c] => Multiplication\n[d] => Division\n"
read -p "please enter the operation you want to perform from above list of available options: " choice

case $choice in
    [aA])
        read -p "enter first number: " num1
        read -p "enter second number: " num2
        result=$((num1+num2))
        echo "addition of "${num1}" and "${num2}" is "${result}
        ;;
    [bB])
        read -p "enter first number: " num1
        read -p "enter second number: " num2
        result=$((num1-num2))
        echo "subtraction of "${num1}" and "${num2}" is "${result}
        ;;
    [cC])
        read -p "enter first number: " num1
        read -p "enter second number: " num2
        result=$((num1*num2))
        echo "multiplication of "${num1}" and "${num2}" is "${result}
        ;;
    [dD])
        read -p "enter first number: " num1
        read -p "enter second number: " num2
        result=$((num1/num2))
        echo "division of "${num1}" and "${num2}" is "${result}
        ;;
    *)
        echo "please choose valid option"
        ;;
esac
