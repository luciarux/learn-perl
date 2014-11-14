#!/usr/bin/perl

# Make a program that will repeatedly ask the user to guess a secret number
# from 1 to 100, picked at random (int(1 + rand 100)).
# when the user guesses the number, or when he presses exit, quit, or a blank line,
# the program quits.


my $secret_no = int(1 + rand(100));
for (;;) {
  print("Guess the number, or press quit/exit/enter:\n");
  chomp(my $line = <STDIN>);
  last if (!$line || $line =~ /^exit|quit$/);
  
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
