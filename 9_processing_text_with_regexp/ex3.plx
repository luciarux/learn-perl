#!/usr/bin/perl

# modify the program in ex2.plx to change every fred with wilma
# and every wilma with fred, so that fred&wilma will become wilma&fred

my $search = '(fred)|(wilma)';
my $replacement = '$2 $1';

my $in_file_name = $ARGV[0];
my $out_file_name = $in_file_name . '.out';
open IN , '<', $in_file_name or die "Couldn't open input file: $!";
open OUT , '>', $out_file_name or die "Couldn't open output file: $!";

select OUT; # the output will go to the OUT file instead of STDOUT;

while (<IN>) {
  chomp;
  s/($search)/$replacement/gi;
  print $_ . "\n";
}
close IN;
close OUT;
select STDOUT;
