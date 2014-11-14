#!/usr/bin/perl

# modify the program in ex2.plx to change every fred with wilma
# and every wilma with fred, so that fred&wilma will become wilma&fred

my $swap = 'fred';
my $with = 'wilma';

my $in_file_name = $ARGV[0];
my $out_file_name = $in_file_name . '.out';
open IN , '<', $in_file_name or die "Couldn't open input file: $!";
open OUT , '>', $out_file_name or die "Couldn't open output file: $!";

select OUT; # the output will go to the OUT file instead of STDOUT;

while (<IN>) {
  chomp; #we made sure we don't have new lines
  s/($swap)/\n/gi;
  s/($with)/$swap/gi;
  s/\n/$with/gi;
  print $_ . "\n";
}
close IN;
close OUT;
select STDOUT;
