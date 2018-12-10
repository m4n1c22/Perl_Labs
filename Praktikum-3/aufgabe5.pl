#Program to find kaprekar numbers less than 800000
$count = 0;
$limit = 800000;
for($i=1;$i<$limit;$i++) {
$sq_i = $i*$i;
$digit_count=0;
$val = $i;
for(;$val!=0;) {
$val = int($val/10);
$digit_count++;
}
$first_part = int($sq_i/(10**($digit_count)));
$second_part = $sq_i%(10**($digit_count));
$sum_of_two_parts = $first_part + $second_part;
if($sum_of_two_parts == $i) {
$count++;
}
}
print "Number of Kaprekar numbers is: $count";
