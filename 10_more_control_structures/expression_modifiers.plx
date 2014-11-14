#!/usr/bin/perl

my $a = -3;
print "$a is negative" if ($a < 0);
my $a = 10;
print "$a is positive" unless ($a < 0);
my $i;
print "We keep counting: $i\n" while ($i++ < 20);
print "Hello, we aren't back at start yet: $i.\n" until ($i-- == 0);

@guests = split /:/, "Virginia Woolf:Leonard Woolf:John Keynes:Lytton Stratchey";
print "we have $_ here" foreach (@guests);
