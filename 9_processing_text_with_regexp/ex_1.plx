#!/usr/bin/perl

# Make a pattern that will match three consecutive copies of whatever is currently
# contained in $what. Eg., if $what is /fred/, your pattern should match fredfredfred.
# If your pattern is /fred|barney/, it matches fredbarneybarney, barneybarneybarney, etc.

my $what = 'fred|barney';

foreach (qw/  fredbarneybarney fredfred fredfredfred barneybarneybarney   /) {
  if (/($what){3}/) {
    print ("$_ matches 3 x $what\n");  
  }
}
