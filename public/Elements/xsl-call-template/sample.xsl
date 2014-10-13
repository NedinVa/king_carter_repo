<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<xsl:for-each select="//book">
					<b><xsl:value-of select="title"/> - <xsl:value-of select="price"/></b>
					<xsl:call-template name="cheaper">
						<xsl:with-param name="price" select="price"/>
					</xsl:call-template>
				</xsl:for-each>
			</body>
		</html>
  </xsl:template>
  
  <xsl:template name="cheaper">
		<xsl:param name="price"/>
		<ul><i>List of less expensive books...</i>
			<xsl:for-each select="//book[price &lt; $price]">
				<li><xsl:value-of select="title"/> - <xsl:value-of select="price"/></li>
			</xsl:for-each>
		</ul>
	</xsl:template>

</xsl:stylesheet>
