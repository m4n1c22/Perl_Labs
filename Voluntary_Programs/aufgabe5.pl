#
#
# Aufgabe 5
#
# Generate the spiral string

sub find_perfect_sq_within_range {
    my $range = @_[0];
    my $i;
    for( $i = 1; ($i*$i) < $range; $i++) {
       $sq_i = $i * $i;
    }
    return $i;
}


$str = <STDIN>;
chomp $str;


$len = length $str;

print "\nString length = $len";

print "\n$str";

$perfect_sq = find_perfect_sq_within_range($len);

print "\nPerfect matrix size = $perfect_sq X $perfect_sq";

my @mat_A;

for( $i = 0; $i < $perfect_sq; $i++ ) {
    my @row_A;    
    for( $j = 0; $j < $perfect_sq; $j++ ) {
    
        $ele = " ";
        push @row_A, $ele ;
    }
    push @mat_A, \@row_A;
}

$k = 0;
$i = ($perfect_sq%2==0)?(int($perfect_sq /2)-1) : (int($perfect_sq /2));
$j =  ($perfect_sq%2==0)?(int($perfect_sq /2)-1) : (int($perfect_sq /2));
$change_dir = 0;

$change_axis = 0;

$sq_size = 1;
$init_size=0;
print "\n";
while($k <= $len) {
    
    if($change_dir==0) {
    
        $mat_A[$j][$i] = substr($str, $k, 1);
        print " $i,$j ";
        $k++;
        $i = $i + 1;
        $init_size++;
        if($init_size==$sq_size) {
            $init_size=0;
            $change_axis = 1;
            #$sq_size++;
        }
    }
    elsif($change_dir==1) {
        print " $i,$j ";
        $mat_A[$j][$i] = substr($str, $k, 1);
        $k++;
        $j = $j - 1;
        $init_size++;
        if($init_size==$sq_size) {
            $init_size=0;
            $change_axis = 1;
            $sq_size++;
        }
        
    }
    elsif($change_dir==2) {    
        
        $mat_A[$j][$i] = substr($str, $k, 1);
        print " $i,$j ";
        $k++;
        $i = $i - 1;
        $init_size++;
        if($init_size==$sq_size) {
            $init_size=0;
            $change_axis = 1;
            #$sq_size++;
        }
    }
    else {
        print " $i,$j ";
        $mat_A[$j][$i] = substr($str, $k, 1);
        $k++;
        $j = $j + 1;
        $init_size++;
        if($init_size==$sq_size) {
            $init_size=0;
            $change_axis = 1;
            $sq_size++;
        }
    }
    if($change_axis) {
        $change_dir = ($change_dir+1)%4; 
        $change_axis = 0;
    }
}
for( $i = 0; $i < $perfect_sq; $i++ ) {
    print "\n";
    for( $j = 0; $j < $perfect_sq; $j++ ) {
    
        print "$mat_A[$i][$j]";
    }
}
