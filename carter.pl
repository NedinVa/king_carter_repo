#!/usr/bin/perl

$images = $ARGV[0];
shift;
$tag = $ARGV[0];
shift;
$tei2html="/lib_content5/etext/lv7/web/bin/etcbin/tei2html";

open(OUTPUT, "| $tei2html");
while (<>) {
        $a = $_;                                            
                   
$a =~ s/$/ /g;
$a =~ s/>>/>/g;
$a =~ s/<cell rend="right">/ <td align="right"> /g;

$a =~ s/<!DOCTYPE TEI.2 system 'teilite.dtd' \[//g;
$a =~ s/<!NOTATION jpg SYSTEM <"jpeg">//g;
$a =~ s/<ENTITY filename SYSTEM "filename.jpg" NDATA jpg>//g;
$a =~ s/<ENTITY % ISOlat1 system "ISOlat1"> %ISOlat1;//g;
$a =~ s/<ENTITY % ISOlat2 system "ISOlat2"> %ISOlat2;//g;
$a =~ s/<ENTITY % ISOnum system "ISOnum"> %ISOnum;//g;
$a =~ s/<ENTITY % ISOpub system "ISOpub"> %ISOpub;//g;
$a =~ s/<ENTITY % ISOtech system "ISOtech"> %ISOtech;//g;
$a =~ s/\]>//g;  

$a =~ s/<!DOCTYPE TEI.2 SYSTEM 'teixlite.dtd'\[//g;
$a =~ s/<!DOCTYPE TEI.2  SYSTEM  'teixlite.dtd'//g;
$a =~ s/\[ <!NOTATION jpg  SYSTEM  "jpeg">//g;
$a =~ s/\[<!NOTATION jpg  SYSTEM  "jpeg">//g;
$a =~ s/<!ENTITY filename  SYSTEM  "filename.jpg" NDATA jpg>//g;
$a =~ s/<!ENTITY % ISOlat1 SYSTEM  "ISOlat1.pen"> %ISOlat1;//g;
$a =~ s/<!ENTITY % ISOlat2 SYSTEM  "ISOlat2.pen"> %ISOlat2;//g;
$a =~ s/<!ENTITY % ISOnum SYSTEM  "ISOnum.pen"> %ISOnum;//g;
$a =~ s/<!ENTITY % ISOpub SYSTEM  "ISOpub.pen"> %ISOpub;//g;
$a =~ s/<!ENTITY % ISOtech SYSTEM  "ISOtech.pen"> %ISOtech;//g;
$a =~ s/<\?xml version=\"1\.0\"\?>//g;
$a =~ s/<\?xml-stylesheet href=\"carter\.xsl\" type=\"text\/xsl\"\?>//g; 

$a =~ s/<sic corr="[^"]*">([^<]*)<\/sic>/ $1 /g;
$a =~ s/<sic corr="[^"]*">([^<]*)<lb\/>([^<]*)<\/sic>/ $1$2 <br> /g;
  

$a =~ s/<note n="([^"]*)">/<a href="http:\/\/etext.lib.virginia.edu\/users\/berkeley\/public\/Cbiodir.html#$1">/g;
$a =~ s/<bibl n="([^"]*)">/<a href="http:\/\/etext.lib.virginia.edu\/users\/berkeley\/public\/Cbibl.html#$1">/g;
$a =~ s/<\/bibl>/<\/a>/g;

$a =~ s/<ref target="([^"]*)">/<a href="#$1">/g;
$a =~ s/<\/ref>/<\/a>/g;

$a =~ s/<teiHeader type="aacr2">/ <!-- /g;
$a =~ s/<\/teiHeader>/ -->/g;

$a =~ s/<titleStmt>/ /g;
$a =~ s/<\/titleStmt>/ /g;

$a =~ s/<publicationStmt>/ /g;
$a =~ s/<\/publicationStmt>/ /g;

$a =~ s/<idno type="callNo">([^<]*)<\/idno>/ /g;

$a =~ s/<encodingDesc>/ /g;
$a =~ s/<\/encodingDesc>/ /g;

$a =~ s/<profileDesc>/ /g;
$a =~ s/<\/profileDesc>/ /g;

$a =~ s/<fileDesc>//g;
$a =~ s/<sourceDesc>//g;

$a =~ s/<div1 type="summary" n="1">/<center><i>Summary<\/i><\/center><br>/g;

$a =~ s/<abbr>AL<\/abbr>//g;
$a =~ s/<abbr>AL<\/abbr>//g;

$a =~ s/<del>/ <S><font color="red">/g;
$a =~ s/<del [^>]*>/ <S><font color="red">/g;
$a =~ s/<\/del>/<\/font><\/S> /g;

$a =~ s/<unclear>/ /g;
$a =~ s/<\/unclear>/ /g;

$a =~ s/<extent>2 pp.<\/extent>//g;
$a =~ s/<date value="[^"]*">([^<]*)<\/date>/<br>$1<br>/g;

$a =~ s/<p>\[abstract here\]<\/p>//g;

$a =~ s/<date value="[^"]*" rend="suppress">[^<]*<\/date>//g;
$a =~ s/<name type="place" rend="suppress">[^<]*<\/place>//g;




$a =~ s/<lb\/>/<br>/g;
$a =~ s/<pb\/>/<hr>/g;
$a =~ s/<pb n="([^"]*)"\/>/<hr width="75%"><center>-<i>$1<\/i>-<\/center><br>/g;

$a =~ s/<name type="sender">[^<]*<\/name>//g;
$a =~ s/<name type="addressee">[^<]*<\/name>//g;

$a =~ s/<add>/ /g;

$a =~ s/<add place="supralinear">/<sup><font color="green">/g;
$a =~ s/<add place="marginleft">/<font color="green">/g;
$a =~ s/<add place="marginbot">/<font color="green">/g;
$a =~ s/<add place="overleaf">/<font color="green">/g;

$a =~ s/<add resp="editor">//g;
$a =~ s/<add resp="RC">/ <i>/g;

$a =~ s/<add >/ /g;
$a =~ s/<add [^>]*>/ /g;

$a =~ s/<\/add>/<\/i><\/font><\/sup>/g;     

$a =~ s/<\/name>Sr./<br><br>Sr./g;
$a =~ s/<\/name>/ /g;

$a =~ s/<q>/ "/g;
$a =~ s/<\/q>/" /g;

$a =~ s/<title>/ <i>/g;
$a =~ s/<\/title>/<\/i> /g;


$a =~ s/<idno rend="suppress">[^<]*<\/idno>//g;

$a =~ s/<ptr id="([^"]*)">/<a name="$1">/g;

#TRAILING ELLIPSES IN KWIC ETC

#$a =~ s/^[^>]*>\s*/ \.\.\. /;
#$a =~ s/^\w*>\s*/ \.\.\. /;
#$a =~ s/^\/\w*>\s*/ \.\.\. /;

#$a =~ s/^\w*">\s*/ \.\.\. /;
$#a =~ s/^\/\w*">\s*/ \.\.\. /;


$a =~ s/<div1 type="entry" id="[^"]*">//g;

#RBS99

$a =~ s/<note rend="suppress">[^<]*<\/note>/ /g;

$a =~ s/<gap>/ <i>[<\/i><font color="magenta"> ... <\/font><i>]<\/i>/g;
$a =~ s/<gap reason=[^>]*>/<i>[<\/i><font color="magenta"> ...<\/font><i>]<\/i> /g;

$a =~ s/\&plus\;/<b>+<\/b>/g;

$a =~ s/<hi rend="overline">([0-9]*)<\/hi>/$1<sup>-<\/sup>/g;

$a =~ s/<hi rend="hand">//g;
$a =~ s/<hi rend="type">//g;
$a =~ s/<hi rend="stamp">//g;

$a =~ s/<l n="([^"]*)" rend="indent">/<BR>$1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/g;
$a =~ s/<l n="([^"]*)" rend="indent1">/<BR>$1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/g;
$a =~ s/<l n="([^"]*)" rend="indent2">/<BR>$1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/g;
$a =~ s/<l n="([^"]*)" rend="indent3">/<BR>$1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/g;

$a =~ s/<p rend="indent2">/<p>\&nbsp\;\&nbsp\;\&nbsp\;\&nbsp\;\&nbsp\;\&nbsp\;\&nbsp\;\&nbsp\;\&nbsp\;\&nbsp\;/g;
$a =~ s/<p rend="indent3">/<p>\&nbsp\;\&nbsp\;\&nbsp\;\&nbsp\;\&nbsp\;\&nbsp\;\&nbsp\;\&nbsp\;\&nbsp\;\&nbsp\;\&nbsp\;\&nbsp\;\&nbsp\;\&nbsp\;\&nbsp\;/g;

#Civil War diary -- add to valley2html

$a =~ s/<milestone unit="section"n="([^"]*)">/<center><br><i>$1<\/i><\/center>/g;

$a =~ s/<div1 type="diary-year" n= "[^"]*" id="[^"]*">//g;
$a =~ s/<div1 type="Biography">//g;
$a =~ s/<div1 type="Biography"[^>]*>//g;
$a =~ s/<div2 type="diary-month" n="[^"]*">//g;
$a =~ s/<div2 type="diary[^"]*" n="[^"]*">//g;

$a =~ s/<div3 type="diary-entry" id="[^"]*">//g;
$a =~ s/<div3 type="diary-entry" n="[^"]*">//g;

$a =~ s/<div3 type="diary-note" n="nd">//g;

$a =~ s/<pb n="([^"]*)">/<br><br>--<i>$1<\/i>--<br><\/br>/g;

$a =~ s/<l rend="3">/<BR>&nbsp;&nbsp;&nbsp;/g;
$a =~ s/<l rend="6">/<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/g;

$a =~ s/<l rend="indent" n="3">/<BR>&nbsp;&nbsp;&nbsp;/g;
$a =~ s/<l rend="indent" n="5">/<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/g;
$a =~ s/<l rend="indent">/<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/g;

#Temp for Japanese

$a =~ s/<milestone unit="speech" n="([^"]*)">/<a name="$1">/g;

#clean up

$a =~ s/<p>[ ]*<\/p>//g;
$a =~ s/<p><\/p>//g;

$a =~ s/<item>[ ]*<\/item>//g;
$a =~ s/<item><\/item>//g;

$a =~ s/<term>[ ]*<\/term>//g;
$a =~ s/<term><\/term>//g;

$a =~ s/<note>/<br><br>/g;

$a =~ s/<note>[ ]*<\/note>//g;
$a =~ s/<note><\/note>//g;

$a =~ s/<date>[ ]*<\/date>//g;
$a =~ s/<date><\/date>//g;

$a =~ s/<publisher>[ ]*<\/publisher>//g;
$a =~ s/<publisher><\/publisher>//g;

$a =~ s/<pubPlace>[ ]*<\/pubPlace>//g;
$a =~ s/<pubPlace><\/pubPlace>//g;

$a =~ s/<name>[ ]*<\/name>//g;
$a =~ s/<name><\/name>//g;

$a =~ s/<resp>[ ]*<\/resp>//g;

$a =~ s/<resp>Collaborator/<br>Collaborator: /g;

$a =~ s/<resp><\/resp>//g;

$a =~ s/<idno>[^<]*<\/idno>//g;

$a =~ s/<title>Library of Congress Subject Headings[ ]*<\/title>//g;

#Cowley link fix

$a =~ s/<\/div2>/<hr width=50%>/g;

#Cowley temp fix

$a =~ s/<l>[ ]*\|[ ]*<\/l>//g;
$a =~ s/<l>\|<\/l>//g;

$a =~ s/<l>/<br>/g;

$a =~ s/<l n="([^"]*)">/<br><i>$1: <\/i> /g;
$a =~ s/<l n="([^>]*)">/<br><i>$1: <\/i> /g;

       $a =~ s/<l n="([0-9]*)" ana="[^"]*">/<br><i>$1:<\/i> /g;

        $a =~ s/<l rend="center">([^<]*)<\/l>/<center>$1<\/center><br>/g;
        $a =~ s/<\/l>//g;
       
        $a =~ s/<l n="([0-9\.]*)">/ <i>$1:<\/i> /g;
        $a =~ s/<l n="([0-9]*)">/ <i>$1:<\/i> /g;
        $a =~ s/<s n="([0-9\.]*)">/ <i>$1:<\/i> /g;

        $a =~ s/<l n="([A-Z]*)">/ <i>$1:<\/i> /g;
   
        $a =~ s/<l indent=[^>]*>/&nbsp;&nbsp;&nbsp;&nbsp;/g;

$a =~ s/<l rend="4">/&nbsp;&nbsp;&nbsp;&nbsp;/g;
$a =~ s/<l rend="5">/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/g;
$a =~ s/<l rend="10">/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/g;
$a =~ s/<l>/<br>/g;

$a =~ s/<l[^>]*>/<br>/g;

$a =~ s/<\/l>/ /g;

$a =~ s/<ref rend="marginal">//g;

$a =~ s/<ref rend="right">([0-9]*)<\/ref>/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\[$1\]/g;
$a =~ s/<ref>([0-9]*)<\/ref>/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="brown">$1<\/font>/g;
$a =~ s/<num>\[([0-9]*)\]<\/num>/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="red">\[Latin: $1\]<\/font> /g;

$a =~ s/<figure type="Cowley" entity="([^"]*)"><\/figure>/&nbsp;\[<a href="http:\/\/etext.lib.virginia.edu\/kinney\/small\/$1.jpg">Image<\/a>\]&nbsp;/g;

$a =~ s/<\/div>/<hr width="50%">/g;

#headers

$a =~ s/<p>[ ]*Keywords in the header are a local Electronic Text Center scheme to aid in establishing analytical groupings.[ ]*<\/p>//g;
$a =~ s/Parsed against local "teilite" dtd.//g;

#spacing in contractions

$a =~ s/\+\'/\'/g;
$a =~ s/\+n\'/\n'/g;

#NEW STYLE
$a =~ s/<pb n="36"><ID>TylTaka36<\/ID>/<\/blockquote><hr><tt>Page 36<\/tt><br><blockquote>/g;
$a =~ s/<pb n="37"><ID>TylTaka37<\/ID>/<\/blockquote><hr><tt>Page 37<\/tt><br><blockquote>/g;
$a =~ s/<pb n="39"><ID>TylTaka39<\/ID>/<\/blockquote><hr><tt>Page 39<\/tt><br><blockquote>/g;
$a =~ s/<pb n="40"><ID>TylTaka40<\/ID>/<\/blockquote><hr><tt>Page 40<\/tt><br><blockquote>/g;

$a =~ s/<note type="source" n="([0-9]*)">/<hr width="50%"> $1.  /g;
$a =~ s/<rs type="doctype">([^<]*)<\/rs>/<br>type: $1/g;
$a =~ s/<place>ViU:([^<]*)<\/place>/<br>Place: ViU:$1/g;
$a =~ s/<place>/<br>Place: /g;
$a =~ s/<biblScope type="pages">([^<]*)<\/biblScope>/<br>Pages: $1/g;
$a =~ s/<rs type="docket" n="1"><\/rs>//g;
$a =~ s/<rs type="docket" n="1">([^<]*)<\/rs>/<br>Docket: $1/g;

$a =~ s/\&hand;/<img src=http:\/\/etext.lib.virginia.edu\/$images\/$tag\/hand.gif/g;

#other UVA specchar

$a =~ s/&cross;/<img src="http:\/\/etext.lib.virginia.edu\/modeng\/greek\/cross.gif">/g;

$a =~ s/&Aquarius;/<img src="http:\/\/etext.lib.virginia.edu\/uvaspecchar\/Aquarius.gif">/g;
$a =~ s/&Aries;/<img src="http:\/\/etext.lib.virginia.edu\/uvaspecchar\/Aries.gif">/g;
$a =~ s/&Cancer;/<img src="http:\/\/etext.lib.virginia.edu\/uvaspecchar\/Cancer.gif">/g;
$a =~ s/&Capricorn;/<img src="http:\/\/etext.lib.virginia.edu\/uvaspecchar\/Capricorn.gif">/g;
$a =~ s/&Gemini;/<img src="http:\/\/etext.lib.virginia.edu\/uvaspecchar\/Gemini.gif">/g;
$a =~ s/&Leo;/<img src="http:\/\/etext.lib.virginia.edu\/uvaspecchar\/Leo.gif">/g;
$a =~ s/&Libra;/<img src="http:\/\/etext.lib.virginia.edu\/uvaspecchar\/Libra.gif">/g;
$a =~ s/&Libratop;/<img src="http:\/\/etext.lib.virginia.edu\/uvaspecchar\/Libratop.gif">/g;
$a =~ s/&Pisces;/<img src="http:\/\/etext.lib.virginia.edu\/uvaspecchar\/Pisces.gif">/g;
$a =~ s/&Sagittarius;/<img src="http:\/\/etext.lib.virginia.edu\/uvaspecchar\/Sagittarius.gif">/g;
$a =~ s/&Scorpio;/<img src="http:\/\/etext.lib.virginia.edu\/uvaspecchar\/Scorpio.gif">/g;
$a =~ s/&Taurus;/<img src="http:\/\/etext.lib.virginia.edu\/uvaspecchar\/Taurus.gif">/g;
$a =~ s/&Virgo;/<img src="http:\/\/etext.lib.virginia.edu\/uvaspecchar\/Virgo.GIF">/g;
$a =~ s/&Zanoni;/<img src="http:\/\/etext.lib.virginia.edu\/uvaspecchar\/Zanoni.gif">/g;

#Fix for Holsinger

$a =~ s/<holitem>/<hr>/g;
$a =~ s/<\/holitem>//g;

$a =~ s/<name1>/<b>/g;
$a =~ s/<\/name1>/<\/b>/g;

$a =~ s/<name2>/<b>, /g;
$a =~ s/<\/name2>/<\/b>/g;      

$a =~ s/<holdate>([0-9][0-9][0-9][0-9])([0-9][0-9])([0-9][0-9])<\/holdate>/: <b><i>$1-$2-$3<\/i><\/b>/g;
$a =~ s/<number>/<br>#/g;
$a =~ s/<\/number>//g;

$a =~ s/<survives>/<br>Survives: /g;
$a =~ s/<\/survives>//g;

$a =~ s/<holsize>/ Size: /g;
$a =~ s/<\/holsize>/ | /g;

$a =~ s/<holseries>/ | Series: /g;
$a =~ s/<\/holseries>/ | /g;

$a =~ s/<holquantity>/<br>Quantity: /g;
$a =~ s/<\/holquantity>//g;

$a =~ s/<holcomment>/<br>Comment: /g;
$a =~ s/<\/holcomment>//g;         


#handle URLs in header

$a =~ s/<p>URL:([^<]*)<\/p>/<br><a href="$1">$1<\/a>/g;

$a =~ s/modeng.browse.html/modeng\/modeng0.browse.html/g;


$a =~ s/<\/figure>/<br>/g;

$a =~ s/<figDesc rend="visible">([^<]*)<\/figDesc>/<br><font size="-1">$1<\/font>/g;
$a =~ s/<figDesc rend="inline">([^<]*)<\/figDesc>/<center>$1<\/center>/g;

$a =~ s/<figDesc>[^<]*<\/figDesc>//g;

$a =~ s/<figure rend="no image">//g;
$a =~ s/<head rend="no image">([^<]*)<\/head>/\[Image unavailable. Caption reads: <tt>$1\]<\/tt>/g;


$a =~ s/<div[0-9] type="bill">//g;
$a =~ s/<div[0-9] type="act">//g;
$a =~ s/<div[0-9] type="verse">//g;
$a =~ s/<div[0-9] type="prose">//g;
$a =~ s/<div[0-9] type="part">//g;
$a =~ s/<div[0-9] type="poem">//g;
$a =~ s/<div[0-9] type="section">//g;
$a =~ s/<div[0-9] type="subsection">//g;
$a =~ s/<div[0-9] type="story">//g;
$a =~ s/<div[0-9] type="intro[^"]*">//g;
$a =~ s/<div[0-9] type="topic[^"]*">//g;
$a =~ s/<div[0-9] type="topic[^>]*>//g;
$a =~ s/<div[0-9] type="riddle">//g;
$a =~ s/<div[0-9] type="story">//g;
$a =~ s/<div[0-9] type="article">//g;
$a =~ s/<div[0-9] type="work">//g;
$a =~ s/<div[0-9] type="essay">//g;
$a =~ s/<div[0-9] type="volume">//g;
$a =~ s/<div[0-9] type="journal">//g;
$a =~ s/<div[0-9] type="entry">//g;
$a =~ s/<div[0-9] type="epistle">//g;
$a =~ s/<div[0-9] type="narrative">//g;
$a =~ s/<div[0-9] type="postscript">//g;
$a =~ s/<div[0-9] type="figure">//g;
$a =~ s/<div[0-9] type="section" n="[^>]*">//g;

#cross references

$a =~ s/<xref doc="([^\"]*)">/<a href="http:\/\/etext.lib.virginia.edu\/etcbin\/browse-carter?id=$1.xml&images=images\/modeng&data=\/web\/data\/users\/berkeley\&tag=public" target="_wblank">/g;
$a =~ s/<xref to="Ext1">/<a href="http:\/\/www.abdn.ac.uk\/virtualmuseum\/index.php?page=object_detail&prefix=ABDUA&num=18746&firstview=true&mt=&sign=&viewnumber=&resultsperpage=9">/g;
$a =~ s/<xref to="Ext2">/<a href="http:\/\/www.angelfire.com\/journal\/millrestoration\/history.html">/g;
$a =~ s/<xref to="Ext3">/<a href="http:\/\/www.bodley.ox.ac.uk\/cgi-bin\/ilej\/image1.pl?item=page&seq=1&size=1&id=gm.1732.11.x.2.x.x.1082">/g;
$a =~ s/<xref to="Ext4">/<a href="http:\/\/www.stratfordhall.org\/learn\/lees\/thomaslee.php">/g;
$a =~ s/<xref to="Ext5">/<a href="http:\/\/xpda.com\/family\/default.htm?page=Fauntleroy-Moore-ind02073.htm">/g;
$a =~ s/<xref to="Ext6">/<a href="http:\/\/www.fraudaid.com\/Dictionary-of-Financial-Scam-Terms\/bill_of_exchange.htm">/g;
$a =~ s/<xref to="Ext7">/<a href="http:\/\/www.next1000.com\/family\/EC\/tarpley.johnI.html">/g;
$a =~ s/<xref to="Ext8">/<a href="http:\/\/www.homepages.rootsweb.com\/~kenzie\/GenLEE.htm">/g;
$a =~ s/<xref to="Ext9">/<a href="http:\/\/www.shirleyassociation.com\/NewShirleySite\/NonMembers\/Surnames\/LeeSurname.html">/g;
$a =~ s/<xref to="Ext10">/<a href="http:\/\/www.angelfire.com\/tx4\/custer\/ball.html">/g;
$a =~ s/<xref to="Ext11">/<a href="http:\/\/www.ajax.lva.lib.va.us\/F\/?func=file&file_name=find-b-clas08.html">/g;

#generalized xrefs
$a =~ s/<xref to="(C[^\"]*)">/<a href="http:\/\/etext.lib.virginia.edu\/etcbin\/browse-carter?id=$1.xml&images=images\/modeng&data=\/web\/data\/users\/berkeley\&tag=public"target="_wblank">/g;
$a =~ s/<xref to="(\/[^\"]*)">/<a href="$1"target="_wblank">/g;
$a =~ s/<xref to="(http[^\"]*)">/<a href="$1"target="_wblank">/g;

$a =~ s/<\/xref>/<\/a>/g;

#images

$a =~ s/<figure entity="fig1">/<img src="\/users\/berkeley\/public\/fig1.jpg" alt="Photograph of the Robert Carter Tomb" style="width:600px; float:right;"><br\/><\/image>/g;

$a =~ s/<figure entity="Diary1">/<img src="\/users\/berkeley\/public\/Diary1.jpg" alt="" style="width:900px; float:right;"><br\/><\/image>/g;

$a =~ s/<figure entity="church">/<img src="\/users\/berkeley\/public\/church.jpg"  alt="" style="width:600px; float:right;"><br\/><\/image>/g;

$a =~ s/<figDesc>/<span class="figdesc" style="display:none;">/g;
$a =~ s/<\/figDesc>/<\/span>/g;

        print OUTPUT $a;
}
close(OUTPUT);        
