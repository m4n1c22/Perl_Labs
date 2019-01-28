#
# Program to convert a decimal number to binary value
#
print "Please enter a decimal number:\n";
$dec = <STDIN>;

$reverse_remainder_str = "";
#loop to find the remainder of each round division.
for($q = $dec; $q >= 1; $q = $q/2) {
    
    $r = $q%2;
    $remainder = "$r".$remainder;
}

print "Binary value of the decimal is $remainder";
