<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<!-- Override built-in template -->
	<xsl:template match="text()"/>

	<xsl:template match="/">
		<html>
			<body>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
	
  <xsl:template match="book">
		<i>
			<xsl:apply-templates select="title"/>
		</i>
		<xsl:text> By: </xsl:text>
		<xsl:apply-templates select="author"/><br/>
  </xsl:template>

	<xsl:template match="title">
		<b><xsl:value-of select="."/></b>
	</xsl:template>

	<xsl:template match="author">
		<font color="blue"><xsl:value-of select="."/></font>
	</xsl:template>
</xsl:stylesheet>