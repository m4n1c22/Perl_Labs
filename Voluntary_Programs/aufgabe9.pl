#
#
# Aufgabe 9
#
# Pascal's triangel
#         1 
#        1 1
#       1 2 1 
#      1 3 3 1 
#     1 4 6 4 1 
#    1 5 10 10 5 1
# Print such a pattern of stars based on the number n. 
# The above depiction is for n = 6.



# Reading value of n
$n = <STDIN>;

$coeff=1;

for($i=0;$i<$n;$i++) {
    for($j=0;$j<$n-$i;$j++) {
        print " ";
    }
    for($k=0;$k<=$i;$k++) {
        if($k==0||$i==0) {
            $coeff=1;
        }
        else {
            $coeff = $coeff*($i-$k+1)/$k;
        }
        print $coeff;
        print " ";
    }
    print "\n";
}
