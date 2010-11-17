#
# this script should be run from it's parent directory 
# which is the top directory of berkeley prj web site.
#
if [ -n "$1" -a -e "$1" ]
then
 FILE=$(basename $1)
 BASE=$(basename $1 .xml)
 export QUERY_STRING="id=${FILE}&images=XYZZY&data=.&tag=public"
 echo $QUERY_STRING
 echo "writing html/${BASE}.html..."
 perl etcbin/browse-carter  | etcbin/abs2relhref.pl | tr '\r' '\n' | tail -n +3 | etcbin/inl.sh >html/${BASE}.html 
 echo "writing html/${BASE}.mod.html..."
 perl etcbin/browse-cartermod | etcbin/abs2relhref.pl | tr '\r' '\n' | tail -n +3 | etcbin/inl.sh >html/${BASE}.mod.html
else
 echo "nothing?" 
fi
#
# 
# browse-carter & browser-cartermod are now the same file
# browse-cartermod is a symbolic link to browse-carter.
# The logic is the same except it then chains to either carter.pl or cartermod.pl,
# depending on how it was invoked. 
#