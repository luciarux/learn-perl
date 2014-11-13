#!/usr/bin/perl

#write a subroutine names total which returns the total of a list of numbers
#try the sample program below:

my @fred = qw {1 3 5 7 9};
my $fred_total = total(@fred);
print ("The total of \@fred is $fred_total.\n");
print ("Enter some numbers on separate lines:");
my $user_total = total(<STDIN>);
print ("The total of those numbers is $user_total");

#write your subroutine below
sub total {
    my $sum = 0;
    foreach (@_) {
        $sum += $_;
    }
    return $sum;
}
