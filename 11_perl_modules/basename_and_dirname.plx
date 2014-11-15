#!/usr/bin/perl
use File::Basename;
while (<STDIN>) {
    chomp;
    my $basename = basename; #gives 'perl'
    my $dir = dirname;
    print ("Basename: $basename\nDirectory: $dir\n");
}

