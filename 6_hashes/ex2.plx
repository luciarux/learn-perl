#!/usr/bin/perl

#write a program that reads a word per line
# then prints a summary of how many times each word has been seen
# bonus: prin them in the order of names

chomp(@lines = <STDIN>);
%summary = ();
foreach(@lines) {
    $summary{$_} += 1;
}
print("Summary:\n");
foreach(sort(keys(%summary))) {
    print("$_ was seen $summary{$_} times.\n");
}
