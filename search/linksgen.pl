#!/usr/local/bin/perl5 -w

print "Enter complete path to texts for which you want to generate links in the form /texts/english/modeng/parsed/private\n";
$dir = <STDIN>;
chomp ($dir);

print "Name the links output file (e.g. modengpub.links)\n";
$linksfile=<STDIN>;
chomp ($linksfile);

if ($dir =~ /\w+/) {
#   $dir =~ s/\/$//; # get rid of any trailing "/" characters at the end of the path
   $dir =~ s/'//;   # get rid of single quote in case they cut and paste
} else {
   die "You need to enter a path!\n\n";
}


opendir(DIR, "$dir");
@files = grep (/.*\.[s-x][g-m][l-m]/,(readdir(DIR)));
        closedir(DIR);

foreach $filename (@files) {
	print "$filename\n";
        open(INFILE, "cat $dir/$filename | tr -d '\012' |") || die "can't open infile $filename\n\n";
        open(OUTFILE, ">>$dir/$linksfile") || die "can't open outfile $filename";

while	( <INFILE> )	
	{
		/<TEI\.2 id="([^"]*)"/ && ($id=$1);
		/<fileDesc>.*?<titleStmt>\s*\n*<title[^>]*>(.*?)<\/title>/ && ($title=$1);
#		/<fileDesc>.*?<author[^>]*>(.*?)<\/author>/ && ($author=$1);
#		/<creation>.*?<date>(.*?)<\/date>/ && ($date=$1);
	}
#print OUTFILE "<From>$id</From><To>$author: <i>$title</i>, $date</To>\n";
print OUTFILE "<From>$id</From><To>$title</To>\n";
close INFILE;
}
close OUTFILE;
