#!/usr/bin/perl

# write a program that asks the user to enter a list of strings on separate lines
# printing each character in a right0

print("Enter your strings, and press Ctrl+D at the end:\n");
chomp(my @lines = <STDIN>);

print("The lines, in a 20-character column: \n");
print("1234567890" x 3 . " #ruler line \n");
printf("%20s\n" x @lines, @lines);
