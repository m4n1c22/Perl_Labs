#
# Program to convert a decimal number to hexadecimal value
#
print "Please enter a decimal number:\n";
$dec = <STDIN>;

$hex_value="";

#loop to find the remainder of each round division.
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

print "Hexadecimal value of the decimal is $hex_value";
