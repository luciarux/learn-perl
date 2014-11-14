#!/usr/bin/perl
##Copyright (C) 2014 by Luciarux

## modify the program ex4.plx so that the line
## that looks like '## Copyright (C) 20XX by Yours Truly'
## is not added twice

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
  if ($lines !~ /$line/) {
     open FILE, ">", $_;
     $lines =~ s/(\A$shebang)\n/$1\n$line\n/;
     print FILE $lines;
     close FILE;
  }
}
