<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>

	<xsl:template match="*|/">
		<!-- This is a built-in template rule, here only for demonstration. -->
		<BLOCKQUOTE>Start: built-in template, * or / - node name is: <b><xsl:value-of select="name()"/></b><br/>
		<xsl:apply-templates/>
		<br/>End: built-in template, * or /</BLOCKQUOTE>
	</xsl:template>

	<xsl:template match="text()|@*">
		<!-- This is a built-in template rule, here only for demonstration. -->
		<BLOCKQUOTE>Start: built-in template, text node or attribute<br/>
		<b>text()</b> = <xsl:value-of select="."/>
		<xsl:apply-templates/>
		<br/>Start: built-in template, text node or attribute</BLOCKQUOTE>
	</xsl:template>
  
  <xsl:template match="/">
		<html>
			<head>
				<style>
					BLOCKQUOTE {margin-left: 15px; 
											border-left: 1px dotted gray;
											border-top: 1px solid black;
											border-bottom: 1px solid black;
											background-color: white}
				</style>
			</head>
			<body>
				<BLOCKQUOTE>Start: root<br/>
				<xsl:apply-templates/>
				<br/>End: root</BLOCKQUOTE>
			</body>
		</html>
  </xsl:template>
  
  <xsl:template match="book">
		<BLOCKQUOTE>Start: book<br/>
		<xsl:apply-templates/>
		<br/>End: book</BLOCKQUOTE>
	</xsl:template>
	
	<xsl:template match="title | author">
		<BLOCKQUOTE style="background-color: lightblue">Start: title | author<br/>
		<xsl:apply-templates />
		<br/>End: title | author</BLOCKQUOTE>
	</xsl:template>
</xsl:stylesheet>
