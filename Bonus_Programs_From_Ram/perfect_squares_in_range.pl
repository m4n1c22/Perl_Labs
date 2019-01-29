#
#
# Printing perfect squares in a range from 1 to n
#



# Reading value of n
$n = int(<STDIN>);

# finding the perfect squares in the range 
for( $i = 1; ($i*$i) <= $n; $i++) {
    $sq_i = $i * $i;
    print "$sq_i ";
}

