#
# Program to convert a decimal number to octal value
#
print "Please enter a decimal number:\n";
$dec = <STDIN>;

$octal_value = "";
#loop to find the remainder of each round division.
for($q = $dec; $q >= 1; $q = $q/8) {
    
    $r = $q%8;
    $octal_value = "$r".$octal_value;
}

print "Octal value of the decimal is $octal_value";
