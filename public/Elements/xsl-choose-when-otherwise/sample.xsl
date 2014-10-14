<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<xsl:for-each select="//book">
					<div>
						<xsl:choose>
							<xsl:when test="self::*[genre = 'Romance']">
								<xsl:attribute name="style">background-color: pink</xsl:attribute>
							</xsl:when>
							<xsl:when test="self::*[genre = 'Fantasy']">
								<xsl:attribute name="style">background-color: lightblue</xsl:attribute>
							</xsl:when>
							<xsl:otherwise>
								<xsl:attribute name="style">background-color: lightgreen</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<xsl:value-of select="title"/>
					</div>
				</xsl:for-each>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
