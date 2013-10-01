<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
	
	<xsl:template match="/">
		<html>
			<body>
				<xsl:apply-templates />
			</body>
		</html>
	</xsl:template>
	
  <xsl:template match="book">
		Title: 
		<!-- { expression } is shorthand -->
		<input size="40" id="{@id}"> 
			<!-- attributes are applied to the current parent element (i.e. 'input') -->
			<xsl:attribute name="value"><xsl:value-of select="title"/></xsl:attribute>
		</input><br/>
  </xsl:template>
</xsl:stylesheet>
