#!/usr/bin/perl
@lines = `perldoc -u -f atan2`; #execute a command with backquotes
foreach (@lines) {
   s/\w<([^>]+)>/\U$1/g; # rewrite lines that incluse <tags> with uppercase TAGS
   print;
}
