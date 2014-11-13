#!/usr/bin/perl

# write a program that reads a string and a number from the user input
# and prints out the string the number of times indicated by the number
# on separate lines

print("The string is is: ");
$first = <STDIN>;
print("The number is: ");
$second = <STDIN>;
print($first x $second);
