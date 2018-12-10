# a,b,c finding the largest, smallest - Aufgabe 1_Ex3
$a = <STDIN>;
$b = <STDIN>;
$c = <STDIN>;
if(($a!=b)&&($b!=$c)&&($a!=$c)) {
  if($a>$b) {
    if($a>$c) {
      print "Largest value: $a";
    }
    else {
      print "Largest value: $c";
    }
  }
  else {
    if($b>$c) {
      print "Largest value: $b";
    }
    else {
      print "Largest value: $c";
    }
  }
  if($a<$b) {
    if($a<$c) {
      print "Smallest value: $a";
    }
    else {
      print "Smallest value: $c";
    } 
  }
  else {
    if($b<$c) {
      print "Smallest value: $b";
    }
    else {
      print "Smallest value: $c";
    }
  }
}
else {
  print "One of the passed values are same."
}
