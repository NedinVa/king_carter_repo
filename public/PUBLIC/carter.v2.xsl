<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:HTML="http://www.w3.org/Profiles/XHTML-transitional" >

  <xsl:template match="*"><xsl:apply-templates/></xsl:template>
  <xsl:template match="text()"><xsl:value-of select="."/></xsl:template>

  <xsl:template match="/">
    <HTML>
      <HEAD>
        <TITLE><xsl:value-of
select="//text/body/div0/opener"/></TITLE>
        <STYLE>
          BODY       { margin:30px; background-color: #FFFFF0; 
                       font-family: Times, serif; font-size: small; }
          P          { margin-top: .5em; margin-bottom: .25em; }
          HR         { color: #888833; }
        </STYLE>
      </HEAD>

      <BODY>
        <img src="../logo.gif" align="left" alt="Robert King Carter's Correspondence and Diary" />

        <br/>
        <br/>                      
        <font size="+2">&#xA0;&#xA0;&#xA0;<b><i>A Collection Transcribed <br/>
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;and Digitized <br/>
&#xA0;&#xA0;&#xA0;by Edmund Berkeley, Jr.</i></b></font>                               
        <br/>
        <br/>
        <br/>
        <b><a href="index.html">List of Letters</a></b> | 
        <b><a href="../index.html">About This Collection</a></b><b/>
        <br/>
        <br/>
        <font size="-1"><a href="/">Electronic Text Center</a>, University of Virginia Library</font>
        <br clear="left" />
        <br/>
        <hr width="75%" />


        <xsl:apply-templates select="//text"/>

     </BODY>
    </HTML>
  </xsl:template>


  <xsl:template match="div1[@type='summary']">
          <center><i>Summary</i></center>
          <xsl:apply-templates />
  </xsl:template>

  <xsl:template match="p">
    <P><xsl:apply-templates/></P>
  </xsl:template>

 <xsl:template match="opener">
    <blockquote><xsl:apply-templates/></blockquote>
  </xsl:template>

<xsl:template match="supplied">
    <xsl:apply-templates/>
  </xsl:template>

<xsl:template match="dateline">
    <p><xsl:apply-templates/></p>  </xsl:template>

<xsl:template match="salute">
    <p><xsl:apply-templates/></p>  </xsl:template>

 <xsl:template match="closer">
    <blockquote><xsl:apply-templates/></blockquote>
  </xsl:template>

<xsl:template match="figDesc">
        <P><I><xsl:apply-templates/></I></P>
</xsl:template>

<xsl:template match="lb">
        <xsl:apply-templates/><BR/>
</xsl:template>

<xsl:template match="orig">
        <FONT COLOR="RED"><xsl:value-of select="@reg"/><xsl:value-of
select="."/></FONT>
        <BR/>
</xsl:template>

<xsl:template match="orig">
        <xsl:value-of select="@reg"/>
</xsl:template>

<xsl:template match="pb">
        <HR/>
        <CENTER><P><I>--<xsl:value-of select="@n"/>--</I></P></CENTER>
</xsl:template>

<xsl:template match="front">
        <xsl:apply-templates select="div1[@type='summary']"/>
        <!-- <xsl:apply-templates/> --></xsl:template>

<xsl:template match="note">
        <xsl:apply-templates/>
</xsl:template>

<xsl:template match="back/div1/note">
        <P><xsl:apply-templates/></P>
</xsl:template>

<xsl:template match="bibl">
        <A href="x">"<xsl:apply-templates/></A>
</xsl:template>

<xsl:template match="xref">
        <A href="x">"<xsl:apply-templates/></A>
</xsl:template>


<xsl:template match="title">
        <h2><center><i><xsl:apply-templates/></i></center></h2>
</xsl:template>


<xsl:template match="opener/dateline/name">
<br/> <xsl:apply-templates/>
</xsl:template>

<xsl:template match="opener/name">
<br/> <xsl:apply-templates/>
</xsl:template>

<xsl:template match="opener/dateline/date">
<xsl:apply-templates/>
</xsl:template>


<xsl:template match="add">
<font color="green"><xsl:apply-templates/></font>
</xsl:template>

<xsl:template match="add[@place='supralinear']">
<font color="green"><sup><xsl:apply-templates/></sup></font>
</xsl:template> 

<xsl:template match="ref">
<font color="blue"><xsl:apply-templates/></font>
</xsl:template>

<xsl:template match="xref">
<font color="blue"><xsl:apply-templates/></font>
</xsl:template>


<xsl:template match="del">
<font color="red"><xsl:apply-templates/></font>
</xsl:template>







<xsl:template match="note">
<font color="teal"><xsl:apply-templates/></font>
</xsl:template>



<xsl:template match="sic">
<font color="brown"><xsl:apply-templates/></font>
</xsl:template>

<xsl:template match="corr">
<font color="FF8C00"><xsl:apply-templates/></font>
</xsl:template>

<xsl:template match="name">
<font color="green"><xsl:apply-templates/></font>
</xsl:template>


<xsl:template match="abbr">
<font color="2E8B57"><xsl:apply-templates/></font>
</xsl:template>









<xsl:template match="p/name">
<font color="green"><xsl:apply-templates/></font>
</xsl:template>


<xsl:template match="table">
        <table border="0"><xsl:apply-templates/></table>
</xsl:template>
<xsl:template match="row">
       <tr><xsl:apply-templates/></tr> 
</xsl:template>
<xsl:template match="cell">
        <td><xsl:apply-templates/></td>
</xsl:template>

<xsl:template match="q">
        "<xsl:apply-templates/>" 
</xsl:template>

<xsl:template match="back/div1/head">
        <hr width="75%"/><b><xsl:apply-templates/></b><br/><br/>
</xsl:template>

<xsl:template match="body/div1/head">
        <hr width="75%"/><h2><xsl:apply-templates/></h2>
</xsl:template>


	<xsl:template match="bibl">
	<A><xsl:attribute name="HREF">Cbibl.html#<xsl:value-of select="@n"/>
	</xsl:attribute><xsl:apply-templates/></A><br/>
	</xsl:template>    

<!-- #typography -->

	<xsl:template match="hi">
		<i><xsl:apply-templates/></i></xsl:template>

	<xsl:template match="hi[@rend='bold']">
		<b><xsl:apply-templates/></b></xsl:template>

	<xsl:template match="hi[@rend='italic']">
		<i><xsl:apply-templates/></i></xsl:template>

	<xsl:template match="hi[@rend='underline']">
		<u><xsl:apply-templates/></u></xsl:template>

	<xsl:template match="hi[@rend='sup']">
		<sup><xsl:apply-templates/></sup></xsl:template>

	<xsl:template match="emph">
		<i><xsl:apply-templates/></i></xsl:template>

	<xsl:template match="emph[@rend='bold']">
		<b><xsl:apply-templates/></b></xsl:template>

	<xsl:template match="emph[@rend='italic']">
		<i><xsl:apply-templates/></i></xsl:template>

	<xsl:template match="emph[@rend='underline']">
		<u><xsl:apply-templates/></u></xsl:template>

	<xsl:template match="emph[@rend='sup']">
		<sup><xsl:apply-templates/></sup></xsl:template>




</xsl:stylesheet>
