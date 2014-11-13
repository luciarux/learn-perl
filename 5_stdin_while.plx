#!/usr/bin/perl
while (defined($_ = <STDIN>)) {
 	chomp($_);
	print("I saw ", $_  . "\n");
}
