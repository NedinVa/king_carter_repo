<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:param name="id">bk111</xsl:param>
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<xsl:apply-templates select="//book[@id=$id]"/>
			</body>
		</html>
  </xsl:template>
  
  <xsl:template match="book">
		<xsl:value-of select="title"/>
	</xsl:template>
</xsl:stylesheet>
