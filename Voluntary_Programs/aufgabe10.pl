#
#   Aufgabe 10
#
#   Program for printing Roman numerals version of numbers with hash.
#
#

print "Please input a year:\n";

$n = int( <STDIN>);

my %roman_numerals = (
    1 => "I",
    4 => "IV",
    5 => "V",
    9 => "IX",
    10 => "X",
    40 => "XL",
    50 => "L",
    90 => "XC",
    100 => "C",
    400 => "CD",
    500 => "D",
    900 => "CM",
    1000 => "M"
    
);

my @roman_limits = (1000,900,500,400,100,90,50,40,10,9,5,4,1);

$rem = $n;

$limit = 0;

$roman_equivalence = "";

while($rem >= 1) {
    
    if($rem < $roman_limits[$limit]) {
           $limit++;
    }
    else {
        $rem = $rem - $roman_limits[$limit];
        $roman_alpha = $roman_limits[$limit];
        $roman_equivalence = $roman_equivalence.$roman_numerals{$roman_alpha};
    }
}
print "Roman Equivalence($n) = $roman_equivalence";
