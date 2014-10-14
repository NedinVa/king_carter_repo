<!SGML "ISO 8879:1986" -- 1 --
			    
CHARSET -- 2 --
BASESET  "ISO 646-1983//CHARSET International Reference Version (IRV)//ESC 2/5 4/0"
DESCSET  0  9 UNUSED
	   9  2 9
	  11  2 UNUSED
	  13  1 13
	  14 18 UNUSED
	  32 95 32
	 127  1 UNUSED

       BASESET  
       "ISO Registration Number 100//CHARSET
       ECMA-94 Right Part of Latin Alphabet Nr. 1//ESC 2/13 4/1"

       DESCSET
        128    32     UNUSED
        160    96     32

-- 3 --
CAPACITY SGMLREF

        TOTALCAP        1000000
        ATTCAP           500000
        ATTCHCAP         500000
        AVGRPCAP         500000
        ELEMCAP          500000
        ENTCAP           500000
        ENTCHCAP         500000
        GRPCAP          1000000
        IDCAP           1000000
        IDREFCAP        1000000
        EXGRPCAP         500000
        EXNMCAP          500000
        NOTCAP           500000
        NOTCHCAP         500000
        MAPCAP           500000
        LKSETCAP         500000
        LKNMCAP          500000

-- 4 --

SCOPE    DOCUMENT

-- 5 --
SYNTAX
SHUNCHAR NONE

BASESET  "ISO 646-1983//CHARSET International Reference Version (IRV)//ESC 2/5 4/0"
DESCSET  0 128 0
FUNCTION
       RE                    13
	 RS                    10
	 SPACE                 32
	 TAB       SEPCHAR     9
NAMING
       LCNMSTRT  ""
	 UCNMSTRT  ""
	 LCNMCHAR  "-._:" -- for XML add _ and : --
	 UCNMCHAR  "-._:" -- for XML add _ and : --

	 NAMECASE  GENERAL     YES -- change to NO for rigorous XML --
		     ENTITY      NO
DELIM      
         GENERAL    SGMLREF
--       NET "/>"
         PIC "?>" add for rigorous XML --
         SHORTREF   NONE -- change to NONE for XML --


NAMES    SGMLREF
QUANTITY SGMLREF
	 ATTCNT    99999999
	 ATTSPLEN  99999999
	 DTEMPLEN  24000
	 ENTLVL    99999999
	 GRPCNT    99999999
	 GRPGTCNT  99999999
	 GRPLVL    99999999
	 LITLEN    24000
	 NAMELEN   99999999
	 PILEN     24000
	 TAGLEN    99999999
	 TAGLVL    99999999
-- 6 --
FEATURES
MINIMIZE 
       DATATAG   NO
	 OMITTAG   NO -- change to NO for XML --
	 RANK      NO -- change to NO for XML --
	 SHORTTAG  YES --change to YES for rigorous XML: supports NET and PIC under DELIM --
LINK   SIMPLE    NO -- change to NO for XML --
	 IMPLICIT  NO -- change to NO for XML --
	 EXPLICIT  NO -- change to NO for XML --
OTHER  CONCUR    NO
	 SUBDOC    NO -- change to NO for XML --
	 FORMAL    NO -- change to NO for XML --
APPINFO NONE>