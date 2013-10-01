#!/usr/bin/perl

# convert cgi links in index to static html links

while ( <> ) {

 s/href="\/etcbin\/browse-cartermod\?id=([^.]+).xml[^"]*"/href="$1.mod.html"/g ;
 s/href="\/etcbin\/browse-carter\?id=([^.]+).xml[^"]*"/href="$1.html"/g ;
 
 print ;

}