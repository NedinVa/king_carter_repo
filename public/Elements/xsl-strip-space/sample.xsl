<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
	<xsl:strip-space elements="book"/>

  <xsl:template match="/">
		<html>
			<body>
				<xsl:value-of select="count(//text())"/> nodes of type text were found.
			</body>
		</html>
  </xsl:template>
		
</xsl:stylesheet>
