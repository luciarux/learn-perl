#!/usr/bin/perl

# write a program to compute the circumference of a circle
# with the radius given by the user
# and returns 0 if the given radius is negative

use Math::Trig;
print("The radius is: "); 
$radius =  <STDIN>;
if ($radius <= 0) {
   $circumference = 0;
} else {
   $circumference = 2  * pi * $radius;
}
print "The circumference is $circumference.\n"
