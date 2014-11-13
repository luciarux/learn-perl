#!/usr/bin/perl

# write a program that makes a modified copy of a text file
# in the copy, every string Fred should be replaced with Larry
# Manfred Mann should become ManLarry Mann
# The input file should be given on the command line
# and the output in a file named ending in .out

my $search = 'fred';
my $replacement = 'Larry';

# the temporary files used for search and replace will be saved
# with a name formed from the name of the original file + contents of $^I

#in this way, you can update many files at once, leaving the originals untouched
$^I = '.out';  

while (<>) {
  chomp;
  s/($search)/($replacement)/gi;
  print;
}
