use strict;
use warnings;
 
my %count;
my $top10rem = 10;
my $file = 'biotechnologie.txt';
open my $fh, '<', $file or die "Could not open '$file' $!";
while (my $line = <$fh>) {
    chomp $line;
    foreach my $str (split /\s+/, $line) {
       $str =~ s/[\-\.\?\,\!\;]//g;
       $count{$str}++;
   
    }
}
foreach my $word (reverse sort { $count{$a} <=> $count{$b} } keys %count) {
    
    if($top10rem >0) {
      printf "%-31s %s\n", $word, $count{$word};
      $top10rem--;
    }
}