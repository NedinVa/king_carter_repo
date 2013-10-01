<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<table border="1">
					<tr><td><b>Title</b></td><td><b>Price</b></td></tr>
					<xsl:for-each select="//book">
						<tr>
							<td><xsl:value-of select="title"/></td>
							<td>
								<xsl:attribute name="bgcolor">lightyellow</xsl:attribute>
								<xsl:if test="price > 10">
									<xsl:attribute name="bgcolor">lightgreen</xsl:attribute>
								</xsl:if>
								<xsl:value-of select="price"/></td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
