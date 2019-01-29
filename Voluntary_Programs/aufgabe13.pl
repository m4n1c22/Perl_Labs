#
#   Aufgabe 13
#   Finding Harshad numbers in the range of 1-100
#

print "All Harshad numbers in the range(1-100)\n";

# loop to check if a number is harshad number or not.
for($i = 1; $i <= 100; $i++ ){
    
    $div = 0;
    $q = $i;
    # This loop extracts the digits of the number by continuous division and 
    # modulo by 10.
    while( $q >= 1 ) {
        $r = $q % 10;
        $q = $q / 10;
        $div = $div + $r;
    }
    if( $i % $div == 0) {
        if($i==100) {
            print "$i\n";
        }
        else {
            print "$i, ";
        }
    }
}
