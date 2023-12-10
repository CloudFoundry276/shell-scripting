#!/bin/bash

#############################################################
# Date: 12/10/2023
# Author: Sagar Pitalekar
# Title: Shell Script Simple Calculator using Function
# Description: In this shell script, we are using function(s) 
#              to calculate the basic calculation operations.
#############################################################

clear

read_input() {
    read -p "enter first number: " num1
    read -p "enter second number: " num2
}

echo "Simple Menu Driven Calculator Using Function & Case"
echo "---------------------------------------------------"
echo "List of Available Options:"
echo -e "[a] => Addition\n[b] => Subtraction\n[c] => Multiplication\n[d] => Division\n"
read -p "please enter the operation you want to perform from above list of available options: " choice

case $choice in
    [aA])
        read_input
        result=$((num1+num2))
        echo "addition of "${num1}" and "${num2}" is "${result}
        ;;
    [bB])
        read_input
        result=$((num1-num2))
        echo "subtraction of "${num1}" and "${num2}" is "${result}
        ;;
    [cC])
        read_input
        result=$((num1*num2))
        echo "multiplication of "${num1}" and "${num2}" is "${result}
        ;;
    [dD])
        read_input
        result=$((num1/num2))
        echo "division of "${num1}" and "${num2}" is "${result}
        ;;
    *)
        echo "please choose valid option"
        ;;
esac
