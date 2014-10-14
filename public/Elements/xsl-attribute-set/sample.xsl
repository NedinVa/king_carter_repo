<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
	
	<xsl:attribute-set name="tableAttrs">
		<xsl:attribute name="border">1</xsl:attribute>
		<xsl:attribute name="cellpadding">5pt</xsl:attribute>
		<xsl:attribute name="cellspacing">5px</xsl:attribute>
	</xsl:attribute-set>
	
	<xsl:attribute-set name="tdAttrs">
		<xsl:attribute name="bgcolor">lightblue</xsl:attribute>
		<xsl:attribute name="onclick">alert(this.innerText)</xsl:attribute>
	</xsl:attribute-set>
  
  <xsl:template match="/">
		<html>
			<body>
				<table xsl:use-attribute-sets="tableAttrs">
					<xsl:for-each select="//book">	
						<tr>
							<td xsl:use-attribute-sets="tdAttrs"><xsl:value-of select="title"/></td>
							<td xsl:use-attribute-sets="tdAttrs"><xsl:value-of select="author"/></td>
						</tr>
					</xsl:for-each>
				</table>
				<p>(Click on table cells to run script.)</p>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
