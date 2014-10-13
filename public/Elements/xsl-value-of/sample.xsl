<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<ul>Example: Returns text of first match.
					<li>
						<xsl:value-of select="//book/title"/>
					</li>
				</ul>
				<ul>Example: Returns result of XPath expression.
					<li>
						<xsl:value-of select="count(//book)"/>
					</li>
				</ul>
				<ul>Example: Returns text of current context.
					<xsl:for-each select="//book/title">
						<li>
							<xsl:value-of select="."/>
						</li>
					</xsl:for-each>
				</ul>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
