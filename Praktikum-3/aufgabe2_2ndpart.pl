# Program to determine a binomial coefficient with n and k
$n = <STDIN>;
$k = <STDIN>;
$diff_n_k = $n - $k;
# initializing the value of fact variable as one.
$fact_n = 1;
$fact_k = 1;
$fact_n_diff_k = 1;
# for loop construct used for computing the factorial of a number.
# initially the value is set as 1 for fact variable and then
# we decrementally multiply variable n with fact.
# fact = fact * n where n is decremented from user defined value to 1.
# apply the same principle for computing the binomial coefficient.
# we have to find the nCk which is
# factorial(n)/(factorial(k)*factorial(n-k))
for(; $n>=1; $n--) {
  $fact_n = $fact_n*$n;
}
for(; $k>=1; $k--) {
  $fact_k = $fact_k*$k;
}
for(; $diff_n_k>=1; $diff_n_k--) {
  $fact_n_diff_k = $fact_n_diff_k*$diff_n_k;
}
$binomial_coeff = $fact_n / ($fact_k*$fact_n_diff_k);
print "Binomial Coefficient is: $binomial_coeff";
