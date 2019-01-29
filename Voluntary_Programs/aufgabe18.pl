#
#
# Aufgabe 18
#
# Rotate matrix by 90° with clockwise 90°


# Reading value of n
print "Enter row and column sizes of matrix:\n";
$r = int(<STDIN>);
$c = int(<STDIN>);

print "Enter elements of the matrix:\n";

my @mat_A;

for( $i = 0; $i < $r; $i++ ) {
    my @row_A;    
    for( $j = 0; $j < $c; $j++ ) {
    
        $ele = int(<STDIN>);
        push @row_A, $ele ;
    }
    push @mat_A, \@row_A;
}


print "the matrix A = [ \n";


for( $i = 0; $i < $r; $i++ ) {
    
    for( $j = 0; $j < $c; $j++ ) {

        print  " $mat_A[$i][$j]";
    }
    print "\n";
}
print "]\n";

    
print "After rotation:";
print "the matrix A = [ \n";

for( $j = 0; $j < $c; $j++ ) {
    
    for( $i = $r - 1; $i >= 0; $i-- ) {

        print  " $mat_A[$i][$j]";
    }
    print "\n";
}
print "]";

