#
#
# Aufgabe 16
#



# Reading value of n
$n = int(<STDIN>);

$all_div = 1;

# finding the perfect squares in the range 
for( $i = 1; ($i*$i) <= $n; $i++) {
    
    $all_div = $all_div * $i;
}


# finding the prime numbers in the range and multiplying
for( $i = 1; $i <= $n; $i++) {
    $flag = 0;
    for( $j = 2; $j <= $i/2; $j++) {
        if( $i%$j == 0) {
            $flag = 1;
            last;
        }
    }
    if($flag == 0) {
        $all_div = $all_div * $i;
    }
}

print "$all_div"
