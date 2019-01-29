print "sie muessen die 10 Aufgaben loesen." , "\n";

$antwort=0;
$aufgabe=0;

for($i=1 ; $i<=10 ; $i++) {

$random1= 1+int (rand(100));
$random2= 1+int (rand(100));
$random3= 1+int (rand(3));

if($random3==1){
$aufgabe=$random1+$random2;
print "$random1+$random2=";
	}elsif($random3==2){
	$aufgabe=$random1-$random2;
	print "$random1-$random2=";
	}else{
	$aufgabe=$random1*$random2;
	print "$random1*$random2=";
	}
chomp ($antwort=<STDIN>);
while($aufgabe!= $antwort){
print"das ergebnis ist falsch. nochmal versuchen.", "\n";
chomp ($antwort=<STDIN>);
}
if($i<10){
print"Richig. die naechste aufgabe." , "\n";}
else{
print"gut gemacht. viel erfolg bei der pruefung!";}
}
