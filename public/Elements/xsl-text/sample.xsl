<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<h1>Examples of xsl:text</h1>
				<p><xsl:text>&amp;copy;</xsl:text></p>
				<p><xsl:text disable-output-escaping="yes">&amp;copy;</xsl:text></p>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
