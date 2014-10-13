<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<head>
				<script><xsl:comment><![CDATA[
				function viewScriptExample() {
					// The special characters will not be escaped because they are inside the script tag
					if (1 < 2 && 2 > 1) {
						alert(pScriptExample.innerHTML);
					}
				}
				]]></xsl:comment></script>
			</head>
			<body>
				<!-- The br tag will be output without the ending slash -->
				<p id="pBR">Hello<br/>world</p>
				<p><button id="btnViewBR" onclick="alert(pBR.innerHTML)">View BR</button></p>
				
				<!-- The special characters will be escaped here but not in the script tag above -->
				<p id="pScriptExample"><![CDATA[test if (1 < 2 && 2 > 1)]]></p>
				<p>
					<button id="btnScriptExample" onclick="viewScriptExample()">Script Example</button>
				</p>
				
				
				<!-- The selected attribute will be output in minimized form -->
				<p>
				<select id="pOptionExample">
					<option>one</option>
					<option selected="selected">two</option>
					<option>three</option>
				</select>
				<button id="btnOptionExample" onclick="alert(pOptionExample.innerHTML)">Option Example</button>
				</p>
				
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
