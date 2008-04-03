#!/usr/local/bin/perl5 -w

$filename = "$ARGV[0]";

open (OPENFILE, "$filename");
open (OUTFILE, ">outfile");

#undef $/;
while (<OPENFILE>){

$_ =~ /(<add.*?<\/add>)/ && ($adds=$1);

print OUTFILE "$adds\n";

}

close OPENFILE;
close OUTFILE;
system("sort outfile > newout");
system("uniq newout > outfile");
system ("rm -f newout");

