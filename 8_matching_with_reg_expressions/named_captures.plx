#!/usr/bin/perl

use 5.010;

$family = "Leonard and Virginia";

if ($family =~ m/(\w+) (and|or) (\w+)/) {
    @list = ($1, $2, $3);
    print("Matched \$1, \$2, \$3: @list\n");
}

# you can label your capture: (?<LABEL>PATTERN)
# so you can use variables of form $+{LABEL}
if ($family =~ m/(?<first>\w+) (and|or) (?<second>\w+)/) {
    @list1 = ($1, $2, $3);
    @list2 = ($+{first}, $+{second});
    print("Matched \$1, \$2, \$3: @list1\n");
    print("Matched \$+{first}, \$+{second}: @list2\n");
}

# back references are possible with named captures
# eg., for a capture (?<LABEL>pattern)
# we can use (\g{LABEL})
# OR \k<LABEL>

$family = "Leonard Woolf and Virginia Woolf";
if ($family =~ m[(\w+) (?<last_name>\w+) (and|or) (\w+) (\g{last_name})]) {
   print("Last name found: $+{last_name}\n");
}


