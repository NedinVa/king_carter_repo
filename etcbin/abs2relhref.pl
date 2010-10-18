#!/usr/bin/perl

while ( <> ) {

 s/href="http:\/\/etext.lib.virginia.edu\/users\/berkeley\/public\/Cbiodir.html#([^"]*)"/href="Cbiodir.html#$1"/g ;
 s/href="http:\/\/etext.lib.virginia.edu\/users\/berkeley\/public\/Cbibl.html#([^"]*)"/href="Cbibl.html#$1"/g ;

 s/href="http:\/\/etext.lib.virginia.edu\/etcbin\/browse-carter?id=(C[0-9a-zA-Z.]+).xml[^"]*"/href="$1.html"/g ;

 print ;

}