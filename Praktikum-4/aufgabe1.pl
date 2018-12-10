sub factorial {
    $num_args = scalar(@_);
    
    if($num_args<1) {
        print "Arguments are less\n";
        return -1;
    }
    
    if($num_args>1) {
        print "Arguments are more\n";
        return -1;
    }
    $n = @_[0];
    if($n<0) {
        print "Invalid arguments for factorial. Pass a value greater than 0.\n";
        return -1;
    }
    $fact = 1;
    #for loop construct used for computing the factorial of a number.
    # initially the value is set as 1 for fact variable and then
    # we decrementally multiply variable n with fact.
    # fact = fact * n where n is decremented from user defined value to 1.

    for(; $n>=1; $n--) {
        $fact = $fact*$n;
    }
    return $fact;
}



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

$fact_n = factorial($n);
$fact_k = factorial($k);
$fact_n_diff_k = factorial($diff_n_k);
if($fact_n<0) {
    print "Error\n";
    exit 1;
}

elsif($fact_k<0) {
    print "Error\n";
    exit 1;
}

elsif($fact_n_diff_k<0) {
    print "Error\n";
    exit 1;
}
else {
    $binomial_coeff = $fact_n / ($fact_k*$fact_n_diff_k);
    print "Binomial Coefficient is: $binomial_coeff";
}
