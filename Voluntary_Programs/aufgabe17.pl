#
# Aufgabe 17
#
# Program to compute the triplet a,b,c with the transfer parameter as the input.
# The following conditions should hold:
# a <b <c
# a² + b² = c²
# a + b + c = n (where n is the transfer parameter)


# Reading value of n
$n = <STDIN>;

for($a=1;$a<=($n/3);$a++) {
    for($b=$a+1;$b<=($n/2);$b++) {
        for($c=$b+1;$c<=($n-1);$c++) {
        
            $sq_c = $c * $c;
            $sq_a = $a * $a;
            $sq_b = $b * $b;
            $sq_sum_a__b = $sq_a + $sq_b;
            $sum_a_b_c = $a + $b + $c;
            if(($sum_a_b_c==$n)&&($sq_sum_a__b == $sq_c)) {
                print "($a / $b / $c) ";
            }
        }
    }
}
