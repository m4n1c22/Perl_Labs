#
#
# Printing prime numbers in a range from 1 to n
#



# Reading value of n
$n = int(<STDIN>);

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
        print "$i ";
    }
}
