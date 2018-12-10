# Aufgabe 5.

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


#Values of 20 sides of the cube are between 1-20
sub rollD20 {
    return randomPositiveInteger(20);
}


#Values of 40 sides of the cube are between 1-40
sub rollD40 {
    return randomPositiveInteger(40);
}

#Values of 60 sides of the cube are between 1-60
sub rollD60 {
    return randomPositiveInteger(60);
}

sub generateSkewedRandomInteger { 
    my $result = (rollD40()%rollD20()) + (rollD60()%rollD40());
    return ($result); 
}


#Generate 8000 random numbers.
sub generateEightThousandNumbers {
    @array_rand_nums = ();
    
    for($i=0;$i<8000;$i++) {
        #generate a random value.
        $rand_val = generateSkewedRandomInteger();    
        push @array_rand_nums,$rand_val;
    }
    return @array_rand_nums;    
}

#Subroutine performing selection sort algorithm. Time complexity O(n^2).
sub selection_sort {
    $num_args = scalar(@_);
    @unsorted_list = @_;
    
    for($i=0;$i<$num_args-1;$i++) {
        $min_idx = $i;
        for($j=$i+1;$j<$num_args;$j++) {
            if($unsorted_list[$j]<$unsorted_list[$min_idx]) {
                $min_idx = $j;
            }
        }
        
        if($min_idx != $i) {
            $temp = $unsorted_list[$i];
            $unsorted_list[$i] = $unsorted_list[$min_idx];
            $unsorted_list[$min_idx] = $temp;
        }
    }
    return @unsorted_list;
}

# Subroutine to calculate median of a list
sub medianOfList {
    $num_args = scalar(@_);
    @sorted_list = @_;
    $median = 0;
    if($num_args%2==0) {
        $median = ($sorted_list[int($num_args/2)-1]+$sorted_list[int($num_args/2)])/2;
    }
    else {
        $median = $sorted_list[int($num_args/2)];
    }
    return $median
}

# Subroutine to calculate mean of the list
sub meanOfList {
    $num_args = scalar(@_);
    @sorted_list = @_;
    $sum = 0;
    for($i=0;$i<$num_args;$i++) {
        $sum += $sorted_list[$i];
    }
    $mean = $sum/$num_args;
    return $mean;
}



@rand_list = generateEightThousandNumbers();
print "\nBefore Sorting\n{";
for($i=0;$i<8000;$i++) {
    if($i%10==0) {
        print "\n ";
    }
    print "$rand_list[$i],";
}
print "$rand_list[$i]\n}";

@sorted_list = selection_sort(@rand_list);
print "\nAfter sorting:\n{";
for($i=0;$i<8000;$i++) {
    if($i%10==0) {
        print "\n ";
    }
    print "$sorted_list[$i],";
}
print "$sorted_list[$i]\n}\n";
$median = medianOfList(@sorted_list);
$mean = meanOfList(@sorted_list);
print "Median: $median, Mean: $mean \n";
