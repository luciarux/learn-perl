#!/usr/bin/perl
use strict;
use feature 'state';

#write a subroutine named greet by telling them the name of the last person
#they greeted, saying "You are the first one here!" if they are the first;

print(greet("Fred"));
print(greet("Barney"));

sub greet {
    state $seen_message = "You are the first one here!";
    my $greeting = "hello, @_ ! $seen_message\n";
    $seen_message = "I've seen @_!";
    return $greeting;
}
