<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>

	<xsl:template match="/">
		<html>
			<body>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="book">
		Note: This template rule will be overridden by the one in the include.
	</xsl:template>
	
	<xsl:include href="sample-include.xsl"/>
	
</xsl:stylesheet>
