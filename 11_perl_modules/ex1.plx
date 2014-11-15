#!/usr/bin/perl

use Module::CoreList;

# find out what modules come built-in with Perl 5.14
my %modules = %{ $Module::CoreList::version{5.014} };
while ( ($key, $val) = each(%modules) ) {
   print("$key: $val\n");
}
