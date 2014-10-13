<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="catalog">
		<html>
			<body>
				<h1>Books</h1>
				<table>
					<xsl:apply-templates select="book"/>
				</table>
			</body>
		</html>
  </xsl:template>
  
  <xsl:template match="book">
		<tr>
			<td><xsl:value-of select="title"/></td>
			<td><xsl:value-of select="price"/></td>
		</tr>
  </xsl:template>
</xsl:stylesheet>
