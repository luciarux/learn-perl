#!/usr/bin/perl
use File::Basename;

print("This program uses the module File::Basename.\n To test it, please enter a path to a file, then press enter:\n");
while (<STDIN>) {
    chomp;
    my $basename = basename $_; #gives 'perl'
    my $dir = dirname $_;
    print ("Basename: $basename\nDirectory: $dir\n");
}

