#Program to determine a factorial of a number
$n = <STDIN>;
#initializing the value of fact variable as one.
$fact = 1;
#for loop construct used for computing the factorial of a number.
# initially the value is set as 1 for fact variable and then
# we decrementally multiply variable n with fact.
# fact = fact * n where n is decremented from user defined value to 1.

for(; $n>=1; $n--) {
  $fact = $fact*$n;
}
print "Factorial of n is $fact";
