#
# Calculating change
#
# How to find the optimal change for a given money?
# Let's say you have the following 1 cent, 2 cents, 5 cents, 10 cents, 
# 20 cents, 50 cents, 1€, 2 €, 5€,10€,20€,50€,100€
# You need to get the optimal split for a given amount.
# If the money is 52.25 EUR
# It will be 1x50EUR, 1x2EUR, 1x20cents, 1x5cents.
#
#

my %change_map = (
    0.01 => "1 cent",
    0.02 => "2 cents",
    0.05 => "5 cents",
    0.10 => "10 cents",
    0.20 => "20 cents",
    0.50 => "50 cents",
    1 => "1 EUR",
    2 => "2 EUR",
    5 => "5 EUR",
    10 => "10 EUR",
    20 => "20 EUR",
    50 => "50 EUR",
    100 => "100 EUR"
);

my @change_vals = (100, 50, 20, 10,5,2,1,0.50,0.20,0.10,0.05,0.02,0.01);

sub calculate_change {
    my $money_left = @_[0];
    
    my %change_for_money;
    
    my $index = 0;
    
    while($money_left >0) {
        if($money_left < $change_vals[$index]) {
            $index++;
        }
        else {
            $money_left = $money_left - $change_vals[$index];
            $money_left = sprintf("%.2f", $money_left);
            if(exists($change_for_money{$change_vals[$index]})) {
                $change_for_money{$change_vals[$index]} += 1;
            }
            else {
                $change_for_money{$change_vals[$index]} = 1
            }
        }
    }
    return %change_for_money;
}

print "Enter the money to be changed: \n";
my $money = <STDIN>;
chomp $money;

my %change = calculate_change($money);

print "The change is as follows:\n";

foreach my $item (@change_vals) {
    if(exists($change{$item})) {
        print $change_map{$item},":", $change{$item},"\n";       
    }
}
