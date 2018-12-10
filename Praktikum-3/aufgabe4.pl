# Program to calculate the prime numbers in a given range using
#Sieve of Eratosthenes
$limit = <STDIN>;
# In Sieve of Eratosthenes we use 2 as the first prime number then,
# we compute the rest.

# We create an array called prime_list.
@prime_list = ();
@non_prime_list = ();
@test_list = ();

$val = 1;
for (;$val <= $limit; $val++) {
  push @test_list, 0;
}
#We use the Sieve Eratosthenes method for calculating the prime numbers
#each round we select one number and find the multiple of that number
# and mark them until the end of the list.
# We repeat the process until there are numbers left in the list
for($i=2;$i<=$#test_list;$i++) {
  if($test_list[$i]==0) {
    push @prime_list, $i;
    for($j=$i ; $j<=$limit ; $j += $i) {
      $test_list[$j] = 1;
    }
  }
}
for($i=0;$i<=$#prime_list;$i++) {
  print "$prime_list[$i]\t";
}
