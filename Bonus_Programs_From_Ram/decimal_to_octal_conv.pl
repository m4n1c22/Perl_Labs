#
# Program to convert a decimal number to octal value
#
print "Please enter a decimal number:\n";
$dec = <STDIN>;

$reverse_remainder_str = "";
#loop to find the remainder of each round division.
for($q = $dec; $q >= 1; $q = $q/8) {
    
    $r = $q%8;
    $remainder = "$r".$remainder;
}

print "Octal value of the decimal is $remainder"
