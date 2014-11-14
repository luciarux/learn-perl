#!/usr/bin/perl

## modify the program ex4.plx so that the line
## that looks like '## Copyright (C) 20XX by Yours Truly'
## is not added twice

## You should edit the files in place keeping a back-up.
## Presume that the program will be invoked with the filenames to edit already on the command line.


#we keep a back-up by using a special variable $^I

$^I = '.bkp';

my $name = "Luciarux";
my @now = localtime();  #an array with sec, min, hour, day, month, year, etc.
my $year = $now[5] + 1900; 
my $line = "##Copyright (C) $year by $name";
my $shebang = "#!.*";
my $copy_pattern = "##Copyright";

foreach (@ARGV) {
  open FILE, '<', $_;
  my $lines = join '', <FILE>;
  close FILE;
  if (! $lines =~ /$line/) {
     open FILE, ">", $_;
     $lines =~ s/(\A$shebang)\n/$1\n$line\n/;
     print $lines;
     print FILE $lines;
     close FILE;
  }
}
