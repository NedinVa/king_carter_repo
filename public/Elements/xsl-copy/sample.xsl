<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>

  <xsl:template match="/">
		<html>
			<body>
				<table border="1">
					<tr><td><b>Title</b></td><td><b>Description</b></td></tr>
					<xsl:apply-templates select="//book"/>
				</table>
			</body>
		</html>
  </xsl:template>
  
  <xsl:template match="html">
		<xsl:apply-templates mode="html"/>
  </xsl:template>
  
  <xsl:template match="@*|*" mode="html">
		<xsl:copy>
			<xsl:apply-templates select="@*" mode="html"/><xsl:apply-templates mode="html"/>
		</xsl:copy>
	</xsl:template>
  
	<xsl:template match="book">
	 	<tr>
	 		<td><xsl:value-of select="title"/></td>
	 		<td><xsl:apply-templates select="description"/></td>
	 	</tr>
	 </xsl:template>
</xsl:stylesheet>
