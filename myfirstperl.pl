#1/usr.bin/perl -w
$DNA = 'ACGGGAGGACGGGAAAATTACTACGGCATTAGC';
$DNA2 = 'ATAGTGCCGTGAGAGTGATGTTAGTA';
print "Here are the original two DNA fragments:\n\n";
print $DNA,"\n";
print $DNA2,"\n\n";

$DNA3 = "$DNA$DNA2";
print"Here is the concatenation of the first two fragments (version 1):\t";
print $DNA3,"\n";

#we are going to transcribe now
$RNA = $DNA;
$RNA =~s/T/U/g;
print "here is the transcribed RNA from DNA:\n\n";
print "$RNA\n";

