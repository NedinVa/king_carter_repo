<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt"
                xmlns:user="urn:user-namespace-here"
                version="1.0">
  <msxsl:script language="JScript" implements-prefix="user"><![CDATA[
    function daysFromPub(nodelistBook) {
			var dToday = new Date();
			var nodeBook = nodelistBook.item(0);
			var sPublishDate = nodeBook.selectSingleNode("publish_date").text;
			var nYear = Number(sPublishDate.substr(0,4));
			var nMonth = Number(sPublishDate.substr(5,2)) - 1;		// months are from 0 to 11
			var nDay = sPublishDate.substr(8,2);
			
			var MinMilli = 1000 * 60;       //Initialize variables.
			var HrMilli = MinMilli * 60;
			var DyMilli = HrMilli * 24;
			
			var dPublish = new Date(nYear, nMonth, nDay);
			
			return String(Math.round((dPublish - dToday) / DyMilli));
    }
  ]]></msxsl:script>
  
  <xsl:template match="/">
		<html>
			<body>
				<table border="1">
					<tr><td><b>Title</b></td><td><b>Days from publication</b></td></tr>
					<xsl:for-each select="//book">
						<xsl:sort select="user:daysFromPub(.)" data-type="number"/>
							<tr>
								<td><xsl:value-of select="title"/></td>
								<td><xsl:value-of select="user:daysFromPub(.)"/></td>
							</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
