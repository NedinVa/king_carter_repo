<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<ul><b>Ordered by Author</b><i> (using for-each loop)</i>
					<xsl:for-each select="//book">	
						<xsl:sort select="author"/>
						<li>
							<xsl:value-of select="author"/> - <xsl:value-of select="title"/>
						</li>
					</xsl:for-each>
				</ul>
				<ul><b>Ordered by Author, ascending then Title, decending</b><i> (using apply-templates)</i>
					<xsl:apply-templates select="//book">	
						<xsl:sort select="author"/>
						<xsl:sort select="title" order="descending"/>
					</xsl:apply-templates>
				</ul>
			</body>
		</html>
  </xsl:template>
  
  <xsl:template match="book">
			<li>
				<xsl:value-of select="author"/> - <xsl:value-of select="title"/>
			</li>
  </xsl:template>
</xsl:stylesheet>
