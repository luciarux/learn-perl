#!/usr/bin/perl

# write a program that read a few numbers from the user input
# and prints the elements in an array of strings
# on that position

@people = qw (fred betty barney dino wilma pebbles bamm-bamm);
print("Type a few numbers and Ctrl+D to indicate you're done:\n"); 
chomp(@lines = <STDIN>);
foreach (@lines) {
  $index = $_ - 1;
  print("On position $_ we have $people[$index].\n");
}
