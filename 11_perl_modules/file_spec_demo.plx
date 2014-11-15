#!/usr/bin/perl

# this is a demostration of some functions in the OO module File::Spec of Perl

use File::Spec;

my @directories = qw /usr bine/;
my $name = 'perl';

print("The directories are: @directories\n");
print("The file is: $name\n");
print("The result of File::Spec->catfile(@directories, $name) is " 
. File::Spec->catfile(@directories, $name));
