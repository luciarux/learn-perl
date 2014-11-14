#!/usr/bin/perl

foreach (1 .. 10) {
  ## redo comes here
  print "Iteration no. $_.\n\n";
  print "Please, choose last, next, redo, or none of the above.\n";
  chomp (my $choice = <STDIN>);
  print "\n";
  last if $choice =~ /last/i;
  next if $choice =~ /next/i;
  redo if $choice =~ /redo/i;
  print "No choice. We go on, to the next!\n\n";
}

print "That's all, folks!\n";
