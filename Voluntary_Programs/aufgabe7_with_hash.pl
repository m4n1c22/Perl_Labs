#
#   Aufgabe 7
#
#   Program for printing english version of numbers with hash.
#
#

print "Please input the number:\n";

$n = int( <STDIN>);

my %eng_equivalence = (
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eightteen",
    19 => "nineteen",
    20 => "twenty",
    30 => "thirty",
    40 => "forty",
    50 => "fifty",
    60 => "sixty",
    70 => "seventy",
    80 => "eighty",
    90 => "ninety",
    100 => "one hundred",
    200 => "two hundred",
    300 => "three hundred",
    400 => "four hundred",
    500 => "five hundred",
    600 => "six hundred",
    700 => "seven hundred",
    800 => "eight hundred",
    900 => "nine hundred"
);

if(($n >= 1) &&($n<=999)) {

    $eng_ver  = "";
    $base_val = 10;
    $place_val = $n;
    # This loop extracts the digits of the number by continuous division and 
    # modulo by 10.
    for($place=2; $place<=3; $place++) {
        $q = $place_val / ($base_val**$place);
        $r = $place_val % ($base_val**$place);
        $unitsplace = $place_val % ($base_val**1);
        $place_val = $place_val - $r;
        if($r>=10 && $r <=19) {
            $eng_ver = $eng_equivalence{$r};
        }
        else {
            if ($place == 3) {
                $eng_ver = $eng_equivalence{$r}." and ".$eng_ver;    
            }
            else {
                $r = $r - $unitsplace;
                $eng_ver = $eng_equivalence{$r}." ".$eng_equivalence{$unitsplace};    
            }
        }
        if($q<1) {
            last;
        }
    }
    print "number is $eng_ver";
}
