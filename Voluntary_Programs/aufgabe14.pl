#!/usr/bin/perl

use strict;
use warnings;

my $IBAN;
my @test = ('DE89370400440532013000',
'DE80700100800593232807',
'DE64700934000000086584');

foreach (@test)
  {
  if(check_iban($_))
    { print "The IBAN: $_ is correct\n"; }
  else
    { print "The IBAN: $_ is WRONG\n"; }
  }

sub check_swift #($swift)
  {
  my $swift = shift;
  $swift =~ s/[^A-Za-z0-9]//g;
  return 1 if($swift =~ m/^([a-zA-Z]){4}([a-zA-Z]){2}([0-9a-zA-Z]){2}([0-9a-zA-Z]{3})?$/);
  return 0;
  }


sub check_iban #($IBAN)
  {
  # Ueberpruefen einer IBAN: Neuberechnung der Pruefsumme und Vergleich
  # Kann auch zum Berechnen der IBAN-Pruefsumme verwendet werden
  # Info siehe unter http://www.iban.de/iban-pruefsumme.html

  # Laenge der IBAN in den einzelnen Laendern
  my %countrycodelengths = 
    ( "DE" =>  22, ) ;

  # IBAN ist Argument
  my $IBAN = shift;

  # Hilfsvariablen
  my $string = '';
  my $C_IBAN = '';
  my $num = 0;

  # Fuellzeichen entfernen
  $IBAN =~ tr/[a-z]/[A-Z]/;
  $IBAN =~ s/[^A-Z0-9]//g;

  # Laendercode und Laenge pruefen
  return 0 if (not exists $countrycodelengths{substr($IBAN, 0, 2)});
  return 0 if (length($IBAN) != $countrycodelengths{substr($IBAN, 0, 2)});

  # Buchstaben konvertieren ('A' = 10, 'B' = 11, usw.)
  # --> IBAN-Codierung = ASCII-Codierung - 55 (z. B. 'A': ASCII 65 --> IBAN 10)  
  $string = $IBAN;
  $string =~ s/([A-Z])/ord($1) - 55/eg ;

  # Pruefsumme loeschen und ans Ende "00" setzen
  my $str = substr($string,6) . substr($string,0,4) . "00";

  # succesive Division mod 97
  while(length($str) > 0)
    {
    if($num != 0) { $num .= substr($str,0,1); }
    else { $num = substr($str,0,1); }
    $str = substr($str,1);
    $num = $num % 97;
    }

  # Divisions-Rest berechnen, Pruefsumme einsetzen
  $num = 98 - $num;
  if(length($num) < 2){$num = "0" . $num;} # zweistellig machen
  $C_IBAN = substr($IBAN,0,2) . $num . substr($IBAN,4);
  $C_IBAN =~ tr/[a-z]/[A-Z]/;

  # Check IBAN
  return 0 if($IBAN ne $C_IBAN);
  return 1; 
  }
