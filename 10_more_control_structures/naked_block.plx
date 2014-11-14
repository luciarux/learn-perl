#!/usr/bin/perl

$root = 1;
{
  print("Please enter a number:\n"); 
  chomp(my $n = <STDIN>);
  my $root = sqrt($n);
  print("The square root of $n is $root.\n");
}

print "Default root is $root;"
