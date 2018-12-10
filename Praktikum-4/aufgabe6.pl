# Aufgabe 6 - Greatest common divisor using euclidean algorithm

# Euclidean algorithm with recursion
sub greatestCommonDivisor {
    
    my ($a,$b) = @_;
    
    if($b==0) {
        return $a;
    }
    else {
        greatestCommonDivisor($b,$a%$b);
    }
}

$a = <STDIN>;
$b = <STDIN>;

$gcd = greatestCommonDivisor($a,$b);
print "Greatest Common Divisor($a and $b) = $gcd";

