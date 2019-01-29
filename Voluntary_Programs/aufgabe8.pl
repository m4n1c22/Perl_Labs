#
#   Aufgabe 8
#
#   Program for root extraction using abc formula
#
#

print "Consider the following quadratic equation a*x^2 + b*x + c = 0\n";
print "Please input the values of a, b and c:\n";

$a = int( <STDIN>);
$b = int (<STDIN>);
$c = int(<STDIN>);


$discriminant = $b*$b - 4*$a*$c;

if($discriminant<0) {
    print "Roots are imaginary\n";
    $discriminant = $discriminant*-1;
    
    $sq_dis = sqrt($discriminant);
    if($sq_dis*$sq_dis != sqrt($discriminant)) {
        $two_a = 2*$a;
        $root1 = "(-$b + sqrt($discriminant)i) / $two_a";
        $root2 = "(-$b - sqrt($discriminant)i) / $two_a";
        print "roots = $root1 , $root2";
    }
    else {
        $root1 = "(-$b + $sq_dis i) / $two_a";
        $root2 = "(-$b - $sq_dis i) / $two_a";
        print "roots = $root1 , $root2";
    }
}
elsif($discriminant==0) {
    print "Root are real\n";
    print "Only one root exists\n";
    $root = -1*$b/2*$a;
    print "root=$root";
}
else {
    print "Root are Real\n";
    $sq_dis = sqrt($discriminant);
    if($sq_dis*$sq_dis != sqrt($discriminant)) {
        $two_a = 2*$a;
        $root1 = "(-$b + sqrt($discriminant)) / $two_a";
        $root2 = "(-$b - sqrt($discriminant)) / $two_a";
        print "roots = $root1 , $root2";
    }
    else {
        $root1 = (-1 * $b + $sq_dis)/(2*$a);
        $root2 = (-1 * $b - $sq_dis)/(2*$a);
        print "roots = $root1 , $root2";
    }
}
