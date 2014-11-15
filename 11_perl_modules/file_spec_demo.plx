#!/usr/bin/perl

# this is a demostration of some functions in the OO module File::Spec of Perl

use File::Spec;

my @directories = qw /usr bine/;
my $name = 'perl';

print("The directories are: @directories\n");
print("The file is: $name\n");
print("The result of File::Spec->catfile(@directories, $name) is " 
. File::Spec->catfile(@directories, $name) . "\n");

print("File::Spec->curdir() is " . File::Spec->curdir() . "\n");
print("File::Spec->rootdir() is " . File::Spec->rootdir() . "\n");
print("File::Spec->devnull() is " . File::Spec->devnull() . "\n");
print("File::Spec->tmpdir() is " . File::Spec->tmpdir() . "\n");
print("File::Spec->updir() is " . File::Spec->updir() . "\n");
print("File::Spec->abs2rel('/usr/bin/perl') is " . File::Spec->abs2rel('/usr/bin/perl') . "\n");
print("File::Spec->rel2abs('../../') is " . File::Spec->rel2abs('../../') . "\n");
