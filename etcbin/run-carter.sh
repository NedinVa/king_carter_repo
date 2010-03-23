FILE=$(basename $1)
BASE=$(basename $1 .xml)
export QUERY_STRING="id=${FILE}&images=XYZZY&data=.&tag=public"
echo $QUERY_STRING
echo "writing html/${BASE}.html..."
perl etcbin/browse-carter  | tr '\r' '\n' >html/${BASE}.html 
echo "writing html/${BASE}.mod.html..."
perl etcbin/browse-cartermod | tr '\r' '\n' >html/${BASE}.mod.html
