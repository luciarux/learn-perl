#!/usr/bin/perl
use strict;
use feature 'state';

#modify the previous program by making greet remember all the people it greeted

print(greet("Fred"));
print(greet("Barney"));
print(greet("Wilma"));
print(greet("Betty"));

sub greet {
    state @seen_people;
    my $msg = "You are the first one here!";
    if (@seen_people) {
        $msg= "@seen_people are already here!"
    }
    my $greeting = "hello, @_ ! $msg\n";
    @seen_people = push @seen_people, @_;
    return $greeting;
}
