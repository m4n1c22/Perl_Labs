#Program to determine the pythogorean triplets
$limit = 100;
$count=0;
for($a=1;$a<$limit;$a++) {
  for($b=$a;$b<$limit;$b++) {
    $sq_c = $a*$a + $b*$b;
    $c = sqrt($sq_c);
    #regular expression to check if the value is an integer or not.
    if ($c =~ /^[+-]?\d+$/ ) {
      $count++;
    }
  }
}
print "Number of right triangles between side length less than 500 are: $count";
