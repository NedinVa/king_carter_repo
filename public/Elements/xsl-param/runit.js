var xml = new ActiveXObject("MSXML2.DOMDocument.3.0");
var xsl = new ActiveXObject("Microsoft.FreeThreadedXMLDOM");
var xslTemplate = new ActiveXObject("MSXML2.XSLTemplate.3.0");

xml.async = false;
xsl.async = false;

xml.load("data.xml");
xsl.load("sample.xsl");

xslTemplate.stylesheet = xsl;

var xslProc = xslTemplate.createProcessor();
xslProc.input = xml;
xslProc.addParameter("id", "bk112");

if (xslProc.transform) {

	var fso = new ActiveXObject("Scripting.FileSystemObject");
	var MyFile = fso.CreateTextFile("output.txt", true);

	MyFile.Write(xslProc.output);
	MyFile.Close();
}

