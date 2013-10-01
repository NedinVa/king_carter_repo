<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<table border="1">
					<tr><td><b>Title</b></td><td><b>Price</b></td></tr>
					<xsl:apply-templates select="//book"/>
				</table>
			</body>
		</html>
  </xsl:template>
  
  <xsl:template match="book">
		This text will not appear in the result.
  </xsl:template>

  <xsl:template match="book[price > 30]">
		<!-- This template will override the more generic "book" template -->
		<tr>
			<td><xsl:value-of select="title"/></td>
			<td bgcolor="lightgreen">
				<xsl:value-of select="price"/>
			</td>
		</tr>
  </xsl:template>

  <xsl:template match="book">
		<!-- This template overrides the previous "book" template -->
		<tr>
			<td><xsl:value-of select="title"/></td>
			<td bgcolor="lightyellow">
				<xsl:value-of select="price"/>
			</td>
		</tr>
  </xsl:template>
</xsl:stylesheet>
