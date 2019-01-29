#!/usr/bin/perl
use strict ;
use warnings ;
 
print "x1: " ;
my $x1 = <STDIN> ;
chomp $x1 ;
print "y1: " ;
my $y1 = <STDIN> ;
chomp $y1 ;
print "x2: " ;
my $x2 = <STDIN> ;
chomp $x2 ;
print "y2: " ;
my $y2 = <STDIN> ;
chomp $y2 ;
my $distance = sqrt ( ( $x2 - $x1 ) ** 2 + ( $y2 - $y1 ) ** 2 ) ;
print "$distance\n" ;
