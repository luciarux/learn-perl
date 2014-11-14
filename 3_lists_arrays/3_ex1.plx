#!/usr/bin/perl

# write a program that reads all the lines from the standard input
# and prints them in reverse way
print("Type a few lines and Ctrl+D to indicate you're done:\n"); 
@lines = <STDIN>;
print("You typed the following lines, in reverse order:\n"); 
print(reverse @lines);
