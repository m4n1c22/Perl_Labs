# Count the digits in a number
#
# If the user input is 3456
#
# Digit count would be 4

$n = <STDIN>;
$digit_count = 0;

for($q = $n;$q >= 1;$q = $q/10) {
    $r = $q%10;
    $digit_count++;
}
print $digit_count;
