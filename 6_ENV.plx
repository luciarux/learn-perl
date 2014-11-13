#!/usr/bin/perl

while (($name, $value) = each(%ENV)) {
    print("\$ENV{\$${name}} is $value\n");
}
