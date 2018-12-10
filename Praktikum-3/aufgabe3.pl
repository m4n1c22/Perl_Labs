# Program to approximate Heron method for square roots.
# Reading the value of variable "a" from user
$a = <STDIN>;
# Setting the value of n as 15
$n = 15;
# Calculating value of x0 as (a+1)/2
$x0 = ($a+1)/2;
# Setting value of xn as x0
$xn = $x0;

# We are going to iteratively(loop) the computation process
# for finding x1,x2,x3,x4 until x15.
# We are going to variable i as a loop variable for the same.
# Variable i is set initially as 0 and then extended until 15.
# In the first iteration/round it will compute x0.
# And in the next round x1 and in 15th round x15
for($i=0;$i<=$n;$i++) {
$xn = 1/2*($xn + $a/$xn);
}
# Finding square root with standard function
$sqrt_a = sqrt($a);
# Comparing the Heron approx with standard function
print "Heron method approx result: $xn\n";
print "Standard function result: $sqrt_a\n";
