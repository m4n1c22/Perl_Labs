# Print the following pattern
#
#         * 
#        * *
#       * * * 
#      * * * * 
#     * * * * * 
#    * * * * * *
#     * * * * * 
#      * * * * 
#       * * * 
#        * *
#         * 
# Print such a pattern of stars based on the number n. 
# The above depiction is for n = 6.

# Reading value of n
$n = <STDIN>;
for($i=0;$i<$n;$i++) {
    for($j=0;$j<$n-$i;$j++) {
        print " ";
    }
    for($k=0;$k<=$i;$k++) {
        print "* ";
    }
    print "\n";
}
for($i=$n-2;$i>=0;$i--) {
    for($j=0;$j<$n-$i;$j++) {
        print " ";
    }
    for($k=0;$k<=$i;$k++) {
        print "* ";
    }
    print "\n";
}



