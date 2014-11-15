#!/usr/bin/perl

# write a program that computes the difference between now 
# and a date that you introduce in the command line :
# ./ex1.plx 1987 4 23
# use DateTime

use DateTime;

my $now = DateTime->now();
print("Today we are in " . $now->ymd . "\n");

my ($year, $month, $day) = @ARGV;
my $input_dt = DateTime->new(
   year => $year,
   month => $month,
   day => $day
);

my $duration = $now - $input_dt;
my @units = $duration->in_units(qw / years months days/ );
printf("%d years %d months %d days \n", @units);

