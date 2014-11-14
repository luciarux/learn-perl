#!/usr/bin/perl

# Modify the program at ex1.plx, so that it prints debugging lines
# like the secret no. you chose as you go along. make it so that you 
# can turn them off. 
# Use the // operator for perl > 5.010 or the conditional operator.


my $secret_no = int(1 + rand(100));
my $debug = %ENV{DEBUG} // 1;
print "The number is $secret_no\n" if $debug;

for (;;) {
  print("Guess the number, or press quit/exit/enter:\n");
  chomp(my $line = <STDIN>);
  last if ($line =~ /^exit|quit|\s*$/);
  
  if ($line == $secret_no) {
    print("You guessed!\n");
    last;
  } elsif($line < $secret_no) {
    print("Too small.\n");
    next;
  } else {
    print("Too large.\n");
  }
}
