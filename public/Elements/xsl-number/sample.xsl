<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
	
	<!-- Override the built-in template -->
	<xsl:template match="text()"/>
  
  <xsl:template match="/">
		<html>
			<body>
				<xsl:apply-templates select="catalog/*"/>
			</body>
		</html>
  </xsl:template>
  
  <xsl:template match="*">
		<div style="position:relative; margin-left:5px">
			<xsl:number level="multiple" count="*" from="catalog" format="1. i"/>
			<span style="position:relative; margin-left:15px">
				<xsl:value-of select="text()"/>
			</span>
			<xsl:apply-templates />
		</div>
  </xsl:template>
</xsl:stylesheet>
