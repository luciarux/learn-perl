#!/usr/bin/perl

# write a program to compute the circumference of a circle
# with the radius given by the user

use Math::Trig;
print("The radius is: "); 
$radius =  <STDIN>;
$circumference = 2  * pi * $radius;
print($circumference . "");
