<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<xsl:variable name="bookCount" select="count(//book)"/>
				<xsl:variable name="bookTotal" select="sum(//book/price)"/>
				<xsl:variable name="bookAverage" select="$bookTotal div $bookCount"/>
					
				<table border="1">
					<tr><td><b>Title</b></td><td><b>Price</b></td><td><b>Average</b></td><td><b>Difference</b></td></tr>
					<xsl:for-each select="//book">
						<tr>
							<td><xsl:value-of select="title"/></td>
							<td align="right"><xsl:value-of select="price"/></td>
							<td align="right"><xsl:value-of select="format-number($bookAverage, '#.00')"/></td>
							<td align="right"><xsl:value-of select="format-number(price - $bookAverage, '#.00')"/></td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
