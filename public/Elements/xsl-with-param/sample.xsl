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
								<xsl:call-template name="value">
									<xsl:with-param name="varPrice" select="price"/>
								</xsl:call-template>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
  </xsl:template>
  
  <xsl:template name="value">
		<xsl:param name="varPrice"/>
		
		<xsl:value-of select="$varPrice"/>
		
	</xsl:template>
  
</xsl:stylesheet>
