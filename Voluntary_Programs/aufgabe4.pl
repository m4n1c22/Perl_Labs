#
# Aufgabe 4
#

for( $i = 3; $i <= 100; $i++) {
    if($i%15==0) {
        print "\n$i = FizzBuzz";
    }
    elsif($i%3==0) {
        print "\n$i = Fizz";
    }
    elsif($i%5==0) {
        print "\n$i = Buzz";
    }
}
