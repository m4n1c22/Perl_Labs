use strict;
use warnings;

#Subroutine performing selection sort algorithm. Time complexity O(n^2).
sub selection_sort {
    my $num_args = scalar(@_);
    my @unsorted_list = @_;
    my ($i, $j, $min_idx, $temp);
    
    for($i=0;$i<$num_args-1;$i++) {
        $min_idx = $i;
        for($j=$i+1;$j<$num_args;$j++) {
            if($unsorted_list[$j] lt $unsorted_list[$min_idx]) {
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

#Subroutine performing bubble sort algorithm. Time complexity O(n^2).
sub bubble_sort {
    my $num_args = scalar(@_);
    my @unsorted_list = @_;
    my ($i, $j, $temp);
    
    for($i=0;$i<$num_args-1;$i++) {
        for($j=0;$j<$num_args-$i-1;$j++) {
            if($unsorted_list[$j] gt $unsorted_list[$j+1]) {
	      $temp = $unsorted_list[$j];
	      $unsorted_list[$j] = $unsorted_list[$j+1];
	      $unsorted_list[$j+1] = $temp;
            }
        }
        
    }
    return @unsorted_list;
}

#Subroutine performing insertion sort algorithm. Time complexity O(n^2).
sub insertion_sort {
    my $num_args = scalar(@_);
    my @unsorted_list = @_;
    my ($i, $j, $curr_val,$pos);
    
    for($i=1;$i<$num_args;$i++) {
	
	$curr_val = $unsorted_list[$i];
	$pos = $i;
      
	while(($pos>0) && ($unsorted_list[$pos-1] gt $curr_val)) {
	  $unsorted_list[$pos] = $unsorted_list[$pos-1];
	  $pos--;
	}
	$unsorted_list[$pos] = $curr_val; 
    }
    return @unsorted_list;
}


#Subroutine performing quick sort algorithm. Time complexity O(nlgn).
sub quick_sort {
    my @unsorted_list = @_;
    if($#unsorted_list < 1) {
      return @unsorted_list;
    }
    my $pivot = pop(@unsorted_list);
    
    my @smallvals =();
    my @largevals =();
    #extracting smaller numbers than pivot to small nums and larger than pivot to largenums
    foreach my $var (@unsorted_list) {
      if ($var lt $pivot) {
	push(@smallvals, $var);
      }
      else {
	push(@largevals, $var);
      }
    }
    # recursively calling quicksort on smallvalues, largevalues with pivot in between.
    my @int_sorted_list=();
    push(@int_sorted_list,quick_sort(@smallvals));
    push(@int_sorted_list,$pivot);
    push(@int_sorted_list, quick_sort(@largevals));
    return @int_sorted_list;
    
    
}

my @my_strlist = ("pat","mat","bat","cat","apt","apple","boy","lamp");
print "Available Sorting:\n1. Selection Sort \n2. Bubble Sort \n3. Insertion Sort \n4. Quick Sort\nEnter a number between 1-4: \n";
my $user_input = <STDIN>;
my @sorted_list= ();
if($user_input == 1) {
    @sorted_list = selection_sort(@my_strlist);
}
elsif($user_input == 2) {
   @sorted_list = bubble_sort(@my_strlist);
}
elsif($user_input == 3) {
   @sorted_list = insertion_sort(@my_strlist);
}
elsif($user_input == 4) {
   @sorted_list = quick_sort(@my_strlist);
}
else {
  die "Error:Wrong number entered";
}
open(FILE_OUTPUT, ">sorted_words.txt") or die("File open Failed: $!");

print "\nSorting done. Output written to the file sorted_words.txt \n";
for(my $i=0;$i<=$#my_strlist;$i++) {
    print(FILE_OUTPUT "$sorted_list[$i]\n");
}
close(FILE_OUTPUT);
