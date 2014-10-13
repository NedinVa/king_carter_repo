<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
	
	<xsl:key name="book-author" match="author" use="id"/>
	<xsl:key name="author-book" match="book" use="@author-id"/>
	
  <xsl:template match="/">
		<html>
			<body>
				<p><h3>Example 1</h3>
				<b>Look for: </b>The first name of the author with an id of 1.<br/>
				<b>XPath Expression: </b>key('book-author', '1')/first-name<br/>
				<b>Result: </b><xsl:value-of select="key('book-author', '1')/first-name"/>
				</p>
				
				<p><h3>Example 2</h3>
				<b>Look for: </b>The title of the first book found with an author's first name of Eva.<br/>
				<b>XPath Expression: </b>//book[key('book-author', @author-id)/first-name = 'Eva']/title<br/>
				<b>Result: </b><xsl:value-of select="//book[key('book-author', @author-id)/first-name = 'Eva']/title"/>
				</p>
				
				<p><h3>Example 3</h3>
				<b>Look for: </b>The title of the first book written by an author with an id of 2. <br/>
				<b>XPath Expression: </b>key('author-book', '2')/title<br/>
				<b>Result: </b><xsl:value-of select="key('author-book', '2')/title"/>
				</p>

				<p><h3>Example 4</h3>
				<b>Look for: </b>The first name of the author of the book Midnight Rain. <br/>
				<b>XPath Expression: </b>//author[key('author-book', id)/title = 'Midnight Rain']/first-name<br/>
				<b>Result: </b><xsl:value-of select="//author[key('author-book', id)/title = 'Midnight Rain']/first-name"/>
				</p>

				<p><h3>Example 5</h3>
					<b>Display a list of books, grouped by author</b>
					<xsl:for-each select="//author">
						<p>
							<xsl:value-of select="first-name"/><xsl:text> </xsl:text><xsl:value-of select="last-name"/><br/>
							<xsl:for-each select="key('author-book', id)">
								Wrote: <xsl:value-of select="title"/><br/>
							</xsl:for-each>
						</p>
					</xsl:for-each>
				</p>
			</body>
		</html>
  </xsl:template>
  
</xsl:stylesheet>
