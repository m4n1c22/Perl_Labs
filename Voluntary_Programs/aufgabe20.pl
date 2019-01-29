#
# Aufgabe 20
#
# Checking if a year is leap year or not.

print "\nEnter a year:";
$year = <STDIN>;

#chomp will remove the newline character added at the end of input.
chomp $year;

#condition to check if the inputted year is a valid number or not.
if($year =~/^[0-9]+$/) {
    if($year%400==0) {
        print "It is a leap year";
    }
    elsif($year%100==0) {
        print "It is not a leap year";
    }
    elsif($year%4==0) {
        print "It is a leap year";
    }
    else {
        print "It is not a leap year";
    }
}
else {
    print "Try again! Inputted year is not valid.";
}
