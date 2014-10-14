<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl"  xmlns:HTML="http://www.w3.org/Profiles/XHTML-transitional">

  <xsl:template><xsl:apply-templates/></xsl:template>
  <xsl:template match="text()"><xsl:value-of/></xsl:template>

  <xsl:template match="/">
    <HTML>
      <HEAD>
        <TITLE><xsl:value-of select="//text/body/div0/opener"/></TITLE>
        <STYLE>
          BODY       { margin:30px; background-color: #FFFFF0; width: 30em;
                       font-family: Times, serif; font-size: small; }
          P          { margin-top: .5em; margin-bottom: .25em; }
          HR         { color: #888833; }
        </STYLE>
      </HEAD>

      <BODY>

        <xsl:apply-templates select="//text/body"/>

     </BODY>
    </HTML>
  </xsl:template>

  <xsl:template match="p">
    <P><xsl:apply-templates/></P>
  </xsl:template>


<xsl:template match="figDesc">
        <P><I><xsl:apply-templates/></I></P>
</xsl:template>

<xsl:template match="lb">
        <xsl:apply-templates/><BR/>
</xsl:template>


<xsl:template match="orig">
        <FONT COLOR="RED"><xsl:value-of select="@reg"/><xsl:value-of select="."/></FONT>
        <BR/>
</xsl:template>



<xsl:template match="orig">
        <xsl:value-of select="@reg"/>
</xsl:template>



<xsl:template match="pb">
        <HR/>
        <CENTER><P><I>Page <xsl:value-of select="@n"/></I></P></CENTER>
</xsl:template>





</xsl:stylesheet>
