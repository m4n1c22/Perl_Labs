# Print the following pattern
#
#   *
#   * *
#   * * *
#   * * * *
#   * * * * *
#   * * * * * *
#
# Print such a pattern of stars based on the number n. 
# The above depiction is for n = 6.

# Reading value of n
$n = <STDIN>;
print "\n";
for($i=0;$i<$n;$i++) {
    for($j=0;$j<=$i;$j++) {
        print "* ";
    }
    print "\n";
}
