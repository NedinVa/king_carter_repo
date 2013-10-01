<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="xml" omit-xml-declaration="yes" />
	
	<xsl:template match="processing-instruction()">
		<xsl:processing-instruction name="xml-stylesheet"><xsl:value-of select="."/></xsl:processing-instruction>
		<xsl:apply-templates/>
	</xsl:template>
	
  <xsl:template match="/catalog">
		<catalog>
			<xsl:for-each select="book">
				<xsl:sort select="price" data-type="number"/>
				<xsl:copy-of select="."/>
			</xsl:for-each>
		</catalog>
  </xsl:template>
  
</xsl:stylesheet>
