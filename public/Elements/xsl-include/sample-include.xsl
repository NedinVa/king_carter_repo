<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:template match="book">
		<p>
			<b><xsl:value-of select="title"/></b> By: <i><xsl:value-of select="author"/></i>
		</p>
	</xsl:template>
</xsl:stylesheet>