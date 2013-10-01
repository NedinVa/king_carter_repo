<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
	
	<!-- Override the built-in template -->
	<xsl:template match="text()"/>
	
	<xsl:template match="/">
		<html>
		<style type="text/css"><xsl:comment>
		  H1 {font: 20pt "Arial"; color: blue}
		  H2 {font: 15pt "Arial"; color: maroon; background-color: yellow}
		  H3 {font: 12pt "Arial"}
		</xsl:comment></style>
		<body>
			<xsl:apply-templates/>
		</body>
	</html>
	</xsl:template>

  <xsl:template match="*">
		<xsl:variable name="level" select="string(count(ancestor-or-self::*))"/>
		<xsl:element name="H{$level}">
			<xsl:value-of select="name()"/>
			<xsl:text>: </xsl:text>
			<xsl:value-of select="text()"/>
		</xsl:element>
		<xsl:apply-templates/>
  </xsl:template>
</xsl:stylesheet>