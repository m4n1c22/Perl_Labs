#Random number generator code aufgabe 2.1

sub randomPositiveInteger {
    
    $num_args = scalar(@_);
    if($num_args > 1) {
        print "arguments are more";
        exit;
    }
    $max_val = @_[0];
    return int(rand($max_val)+1);
}

#Values of 10 sides of the cube are between 1-10
sub rollD10 {
    return randomPositiveInteger(10);
}

sub simulate_throws {
    $num_args = scalar(@_);
    if($num_args > 1) {
        print "arguments are more";
        exit;
    }
    $num_throws = @_[0];
    
    if($num_throws>1) {
        print "Result after $num_throws throws:\n";
    }
    else {
        print "Result after $num_throws throw:\n";
    }
    for($i=0;$i<$num_throws;$i++) {
        $result = rollD10();
        print "$result\n";
    }
}

simulate_throws(1);



