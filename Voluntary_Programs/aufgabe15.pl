#
#   Aufgabe 15
#
#   Program for convert decimal to binary, octal and hexadecimal value.
#
#


print "Please enter a decimal number:\n";
$dec = <STDIN>;

$binary_value = "";
$octal_value = "";
$hex_value="";

#loop to find the binary value
for($q = $dec; $q >= 1; $q = $q/2) {
    
    $r = $q%2;
    $binary_value = "$r".$binary_value;
}


#loop to find the hexadecimal value
for($q = $dec; $q >= 1; $q = $q/16) {
    
    $r = $q%16;
    if($r==10)  {
        $hex_value = "A".$hex_value;
    }
    elsif($r==11) {
        $hex_value = "B".$hex_value;
    }
    elsif($r==12) {
        $hex_value = "C".$hex_value;
    }
    elsif($r==13) {
        $hex_value = "D".$hex_value;
    }
    elsif($r==14) {
        $hex_value = "E".$hex_value;
    }
    elsif($r==15) {
        $hex_value = "F".$hex_value;
    }
    else {
        $hex_value = "$r".$hex_value;
    }
    
}


#loop to find the octal value.
for($q = $dec; $q >= 1; $q = $q/8) {
    
    $r = $q%8;
    $octal_value = "$r".$octal_value;
}


print "\nBinary value of the decimal is $binary_value";
print "\nOctal value of the decimal is $octal_value";
print "\nHexadecimal value of the decimal is $hex_value";
