<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:import href="sample-import.xsl"/>
	<xsl:output method="html"/>

  <xsl:template match="book">
		<font face="Arial">
			<xsl:apply-imports/>
		</font>
  </xsl:template>
</xsl:stylesheet>
