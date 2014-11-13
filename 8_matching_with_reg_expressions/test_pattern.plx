#!/usr/bin/perl

# a program to test different patterns against lines
# in the files supplied which specify the patterns in lines starting with 'pattern: '
# and the strings the match against on the lines after

$pattern = ".*";
while (<>) {
    chomp;
    if (/\Apattern: (.*)/) {
        $pattern = $1;
    } elsif (/$pattern/) {
        print "Pattern $pattern matched: |$`<$&>$'|\n"; #the automatic match vars
    } else {
        print "No match for pattern $patern: |$_|\n";
    }
    
}
