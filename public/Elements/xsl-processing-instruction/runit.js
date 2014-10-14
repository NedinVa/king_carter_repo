var xml = new ActiveXObject("MSXML2.DOMDocument.3.0");
var xsl = new ActiveXObject("MSXML2.DOMDocument.3.0");

xml.async = false;
xsl.async = false;

xml.load("data.xml");
xsl.load("sort.xsl");

var fso = new ActiveXObject("Scripting.FileSystemObject");
var MyFile = fso.CreateTextFile("output.xml", true);

MyFile.Write(xml.transformNode(xsl));
MyFile.Close();


