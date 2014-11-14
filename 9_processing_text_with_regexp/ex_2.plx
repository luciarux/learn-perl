#!/usr/bin/perl

# write a program that makes a modified copy of a text file
# in the copy, every string Fred should be replaced with Larry
# Manfred Mann should become ManLarry Mann
# The input file should be given on the command line
# and the output in a file named ending in .out

my $search = 'fred';
my $replacement = 'Larry';

my $in_file_name = $ARGV[0];
my $out_file_name = $in_file_name . '.out';
open IN , '<', $in_file_name or die "Couldn't open input file: $!";
open OUT , '<', $out_file_name or die "Couldn't open output file: $!";

select OUT; # the output will go to the OUT file instead of STDOUT;

while (<IN>) {
  chomp;
  s/($search)/$replacement/gi;
  print $_ . "\n";
}
close IN;
close OUT;
select STDOUT;
