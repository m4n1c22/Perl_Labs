#
#   Aufgabe 7
#
#   Program for printing english version of numbers. 
#   Using just if else it is a longer way.
#

print "Please input the number:\n";

$n = int( <STDIN>);

if(($n >= 1) &&($n<=999)) {

    $eng_ver  = "";
    $i=1;
    $q = $n;
    
    # This loop extracts the digits of the number by continuous division and 
    # modulo by 10.
    while( $q >= 1 ) {
        $r = $q % 10;
        $q = $q / 10;
        if($i==1) {
            if($r == 1) {
                $eng_ver = "one";    
            }
            elsif($r == 2) {
                $eng_ver = "two";    
            }
            elsif($r == 3) {
                $eng_ver = "three";    
            }
            elsif($r == 4) {
                $eng_ver = "four";    
            }
            elsif($r == 5) {
                $eng_ver = "five";    
            }
            elsif($r == 6) {
                $eng_ver = "six";    
            }
            elsif($r == 7) {
                $eng_ver = "seven";    
            }
            elsif($r == 8) {
                $eng_ver = "eight";    
            }
            elsif($r == 9) {
                $eng_ver = "nine";    
            }
            else {
                $eng_ver = "zero";
            }
        }
        elsif($i==2) {
            if($r == 1) {
                if($eng_ver eq "zero") {
                    $eng_ver = "ten";
                }
                elsif($eng_ver eq "one") {
                    $eng_ver = "eleven";   
                }
                elsif($eng_ver eq "two") {
                    $eng_ver = "twelve";   
                }
                elsif($eng_ver eq "three") {
                    $eng_ver = "thirteen";   
                }
                elsif($eng_ver eq "four") {
                    $eng_ver = "fourteen";   
                }
                elsif($eng_ver eq "five") {
                    $eng_ver = "fifteen";   
                }
                elsif($eng_ver eq "six") {
                    $eng_ver = "sixteen";   
                }
                elsif($eng_ver eq "seven") {
                    $eng_ver = "seventeen";   
                }
                elsif($eng_ver eq "eight") {
                    $eng_ver = "eightteen";   
                }
                elsif($eng_ver eq "nine") {
                    $eng_ver = "nineteen";   
                }
            }
            elsif($r == 2) {
                if($eng_ver eq "zero") {
                    $eng_ver="";    
                }
                $eng_ver = "twenty $eng_ver";
            }
            elsif($r == 3) {
                if($eng_ver eq "zero") {
                    $eng_ver="";    
                }
                $eng_ver = "thirty ".$eng_ver;    
            }
            elsif($r == 4) {
                if($eng_ver eq "zero") {
                    $eng_ver="";    
                }
                $eng_ver = "forty ".$eng_ver;    
            }
            elsif($r == 5) {
                if($eng_ver eq "zero") {
                    $eng_ver="";    
                }
                $eng_ver = "fifty ".$eng_ver;    
            }
            elsif($r == 6) {
                if($eng_ver eq "zero") {
                    $eng_ver="";    
                }
                $eng_ver = "sixty ".$eng_ver;    
            }
            elsif($r == 7) {
                if($eng_ver eq "zero") {
                    $eng_ver="";    
                }
                $eng_ver = "seventy ".$eng_ver;    
            }
            elsif($r == 8) {
                if($eng_ver eq "zero") {
                    $eng_ver="";    
                }
                $eng_ver = "eighty ".$eng_ver;    
            }
            elsif($r == 9) {
                if($eng_ver eq "zero") {
                    $eng_ver="";    
                }
                $eng_ver = "ninty ".$eng_ver;    
            }
            else {
                if($eng_ver eq "zero") {
                    $eng_ver="";    
                }
                $eng_ver = $eng_ver;
            }
        }
        elsif($i==3) {
            if($r == 1) {
                if($eng_ver eq "") {
                    $eng_ver = "one hundred ";    
                }
                else {
                    $eng_ver = "one hundred and $eng_ver";        
                }
            }
            elsif($r == 2) {
                if($eng_ver eq "") {
                    $eng_ver = "two hundred ";    
                }
                else {
                    $eng_ver = "two hundred and $eng_ver";        
                }
            }
            elsif($r == 3) {
                if($eng_ver eq "") {
                    $eng_ver = "three hundred ";    
                }
                else {
                    $eng_ver = "three hundred and $eng_ver";        
                }
            }
            elsif($r == 4) {
                if($eng_ver eq "") {
                    $eng_ver = "four hundred $eng_ver";    
                }
                else {
                    $eng_ver = "four hundred and $eng_ver";        
                }        
            }
            elsif($r == 5) {
                if($eng_ver eq "") {
                    $eng_ver = "five hundred ";    
                }
                else {
                    $eng_ver = "five hundred and $eng_ver";        
                }
            }
            elsif($r == 6) {
                if($eng_ver eq "") {
                    $eng_ver = "six hundred ";    
                }
                else {
                    $eng_ver = "six hundred and $eng_ver";        
                }
            }
            elsif($r == 7) {
                if($eng_ver eq "") {
                    $eng_ver = "seven hundred $eng_ver";    
                }
                else {
                    $eng_ver = "seven hundred and $eng_ver";        
                }
            }
            elsif($r == 8) {
                if($eng_ver eq "") {
                    $eng_ver = "eight hundred ";    
                }
                else {
                    $eng_ver = "eight hundred and $eng_ver";        
                }
            }
            elsif($r == 9) {
                if($eng_ver eq "") {
                    $eng_ver = "nine hundred ";    
                }
                else {
                    $eng_ver = "nine hundred and $eng_ver";        
                }
            }
            else {
                if($eng_ver eq "zero") {
                    $eng_ver="";    
                }
            }
        }
        $i++;
    }
    print "\n$eng_ver";
}
else {
    print "Entered value is beyond the range (1-999)";
}
