#!/usr/bin/perl
use 5.012;
my @surrealists = qw /Dali. Miro. Kahlo. Giacometti. Klee. Bacon. Chagall./;
while (my($index, $val) = each @surrealists) {
    print ("$index: $val\n");
};
