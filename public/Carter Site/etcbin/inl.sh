#!/bin/sh
# insert newlines before html end tags  read stdin, write stdout
# ( to help in running diff on crufty etext generated html ) 
sed -e 's$</$\
</$g'  
