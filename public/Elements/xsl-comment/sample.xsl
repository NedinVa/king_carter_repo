<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
	<xsl:template match="/">
		<html>
			<head>
				<script>
					<xsl:comment><![CDATA[
function test() {
	alert("Hello!");
}
]]></xsl:comment>
				</script>
			</head>
			<body>
				<button id="btnTest" onclick="test()">Click Me</button>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
