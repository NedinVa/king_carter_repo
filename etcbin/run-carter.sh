FILE=$(basename $1)
BASE=$(basename $1 .xml)
export QUERY_STRING="id=${FILE}&images=XYZZY&data=.&tag=public"
echo $QUERY_STRING
echo "writing html/${BASE}.html..."
perl etcbin/browse-carter  | tr '\r' '\n' | tail +3 >html/${BASE}.html 
echo "writing html/${BASE}.mod.html..."
perl etcbin/browse-cartermod | tr '\r' '\n' | tail +3 >html/${BASE}.mod.html
#
# browse-carter & browser-cartermod are now the same file
# browse-cartermod is a symbolic link to browse-carter.
# The logic is the same except it then chains to either carter.pl or cartermod.pl,
# depending on how it was invoked. 
#