<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>

	<xsl:decimal-format name="us" decimal-separator='.' grouping-separator=',' />
	<xsl:decimal-format name="european" decimal-separator=',' grouping-separator='.' />
	<xsl:decimal-format
			name="example"
			decimal-separator="."
			grouping-separator=","
			infinity="INFINITY"
			minus-sign="-"
			NaN="Not a Number"
			percent="%"
			per-mille="m"
		  zero-digit="0"
		  digit="#"
			pattern-separator=";" /> 

  <xsl:template match="/">
		<HTML>
			<BODY>
				<table border="1">
					<tr align="center">
						<td><b>Data</b></td>
						<td><b>Default</b></td>
						<td><b>European</b></td>
						<td><b>US</b></td>
						<td><b>Example</b></td>
					</tr>
					<tr align="right">
						<td>24535.2</td>
						<td>
							<xsl:value-of select="format-number(24535.2, '###,###.00')"/>
						</td>
						<td>
							<xsl:value-of select="format-number(24535.2, '###.###,00', 'european')"/>
						</td>
						<td>
							<xsl:value-of select="format-number(24535.2, '###,###.00', 'us')"/>
						</td>
						<td>
							<xsl:value-of select="format-number(24535.2, '###,###.00', 'example')"/>
						</td>
					</tr>
					<tr align="right">
						<td>-123.45</td>
						<td>
							<xsl:value-of select="format-number(-123.45, '###,###.00')"/>
						</td>
						<td>
							<xsl:value-of select="format-number(-123.45, '###.###,00', 'european')"/>
						</td>
						<td>
							<xsl:value-of select="format-number(-123.45, '###,###.00', 'us')"/>
						</td>
						<td>
							<xsl:value-of select="format-number(-123.45, '###,###.00', 'example')"/>
						</td>
					</tr>
					<tr align="right">
						<td>-123.45</td>
						<td>
							<xsl:value-of select="format-number(-123.45, '###,###.00;(###,###.00)')"/>
						</td>
						<td>
							<xsl:value-of select="format-number(-123.45, '###.###,00;(###.###,00)', 'european')"/>
						</td>
						<td>
							<xsl:value-of select="format-number(-123.45, '###,###.00;(###,###.00)', 'us')"/>
						</td>
						<td>
							<xsl:value-of select="format-number(-123.45, '###,###.00;(###,###.00)', 'example')"/>
						</td>
					</tr>
					<tr align="right">
						<td>193 div 200</td>
						<td>
							<xsl:value-of select="format-number(193 div 200, '###.#%')"/>
						</td>
						<td>
							<xsl:value-of select="format-number(193 div 200, '###,#%', 'european')"/>
						</td>
						<td>
							<xsl:value-of select="format-number(193 div 200, '###.#%', 'us')"/>
						</td>
						<td>
							<xsl:value-of select="format-number(193 div 200, '###.#%', 'example')"/>
						</td>
					</tr>
					<tr align="right">
						<td>193 div 200</td>
						<td>
							<xsl:value-of select="format-number(193 div 200, '###.#&#x2030;')"/>
						</td>
						<td>
							<xsl:value-of select="format-number(193 div 200, '###,#&#x2030;', 'european')"/>
						</td>
						<td>
							<xsl:value-of select="format-number(193 div 200, '###.#&#x2030;', 'us')"/>
						</td>
						<td>
							<xsl:value-of select="format-number(193 div 200, '###.#m', 'example')"/>
						</td>
					</tr>
					<tr align="right">
						<td>1 div 0</td>
						<td>
							<xsl:value-of select="format-number(1 div 0, '###,###.00')"/>
						</td>
						<td>
							<xsl:value-of select="format-number(1 div 0, '###.###,00', 'european')"/>
						</td>
						<td>
							<xsl:value-of select="format-number(1 div 0, '###,###.00', 'us')"/>
						</td>
						<td>
							<xsl:value-of select="format-number(1 div 0, '###,###.00', 'example')"/>
						</td>
					</tr>
					<tr align="right">
						<td>a div 0</td>
						<td>
							<xsl:value-of select="format-number(a div 0, '###,###.00')"/>
						</td>
						<td>
							<xsl:value-of select="format-number(a div 0, '###.###,00', 'european')"/>
						</td>
						<td>
							<xsl:value-of select="format-number(a div 0, '###,###.00', 'us')"/>
						</td>
						<td>
							<xsl:value-of select="format-number(a div 0, '###,###.00', 'example')"/>
						</td>
					</tr>
				</table>
			</BODY>
		</HTML>
  </xsl:template>
</xsl:stylesheet>

