<?php

#author - Becca McWilliams
#print a string
print "hello world\n";

#variable
$DNA = 'ACGGGAGGACGGGAAAATTACTACGGCATTAGC';
print $DNA."\n";

#string concatenation
$DNA2 = 'ATAGTGCCGTGAGAGTATGTAGTA';
print "here are the original two DNA fragments:\n\n";
print $DNA."\n";
print $DNA2."\n";
$DNA3 = "$DNA$DNA2";
print "here is the concatenation of the first two fragments:\n\n";
print $DNA3."\n";

#transcribe dna to rna
$RNA = $DNA3;
$RNA = str_replace("T","U",$RNA);
print "here is the result of transcribing the DNA to RNA:\n\n";
print "$RNA\n";

?>

