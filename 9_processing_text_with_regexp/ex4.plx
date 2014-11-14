#!/usr/bin/perl

## write a program to add a copyright line to all your exercise answers
## that looks like '## Copyright (C) 20XX by Yours Truly'
## after the shebank line in a file.
## You should edit the files in place keeping a back-up.
## Presume that the program will be invoked with the filenames to edit already on the command line.


#we keep a back-up by using a special variable $^I

$^I = '.bkp';

my $name = "Luciarux";
my @now = localtime();  #an array with sec, min, hour, day, month, year, etc.
my $year = $now[5] + 1900; 
my $line = "##Copyright (C) $year by $name";

while (<>) {
  chomp;
  s{(^#!.*)}{$1\n$line};  
  print;
}
