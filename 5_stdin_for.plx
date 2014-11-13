#!/usr/bin/perl
foreach (<STDIN>) {
 	chomp($_);
	print("I saw ", $_  . "\n");
}
