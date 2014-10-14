<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<table border="1">
					<tr><td><b>Author</b></td><td><b>Title</b></td></tr>
					<xsl:for-each select="//book">
						<tr>
							<td><xsl:value-of select="author"/></td>
							<td><xsl:value-of select="title"/></td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
