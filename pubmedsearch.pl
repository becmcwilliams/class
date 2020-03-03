#!/usr/bin/perl -w
use LWP::Simple;

#search term to find
$search_term = "breast cancer";

#replace space with +
$search_term =~ s/\s/+/g;

#print $search_term;

#maximum number of results to receive
$retmax = 10;

#base url
$base = 'https://eutils.ncbi.nlm.nih.gov/entrez/eutils/';

#set the database to search
$db_name = 'pmc';

#generate query url

$url = $base."esearch.fcgi?db=$db_name&retmax=$retmax&term=$search_term";

#print $url;

#submit and receive XML results
$esearch_result=get($url);

#print "$esearch_result";

#extract paper IDs using match regex . anything * anytime, globally
@ids = ($esearch_result =~ m|.*<Id>(.*)</Id>.*|g);

print join(',',@ids);

#delete old file
unlink "abstracts.txt";

#loop through all the ids
foreach $id (@ids)
{
print "$id\n";
#get abstract for each pubmed id
$fetchedurl = $base."efetch.fcgi?db=pubmed&id=$id&retmode=text&rettype=abstract";
#print get($fetchedurl);
#open a file for appending the output
open(OUTFILE,'>>','abstracts.txt');
#get results and print to filehandle
print OUTFILE get($fetchedurl);
sleep 1;
#close file
close OUTFILE;
}

