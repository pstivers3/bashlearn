<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>
<xsl:template match="/">
<html>
<head><title>Rover Stacks - Current Version</title>
</head>
<body>
<p>Information about Rover stacks and the running version</p>
<table width="25%" border="3">
  <THEAD>
    <TR>
       <TD width="100%"><B>Snapshot taken at</B></TD>
    </TR>
  </THEAD> 
  <TBODY>
    <xsl:for-each select="stackdata/timestamp/time">
    <TR>    
       <TD width="100%"><xsl:value-of select="now" /></TD>      
    </TR>
    </xsl:for-each>
  </TBODY>
</table>
<p>        </p>
<p>        </p>
<table width="50%" border="1">
  <THEAD>
    <TR>
       <TD width="50%"><B>Stack Name</B></TD>
       <TD width="50%"><B>Version</B></TD>
       <TD width="50%"><B>Vault URL</B></TD>
       <TD width="50%"><B>ePC</B></TD>
       <TD width="50%"><B>Rover FQDN</B></TD>
       <TD width="50%"><B>Vault State</B></TD>
       <TD width="50%"><B>VSA Sync</B></TD>
       <TD width="50%"><B>ePrint Stack</B></TD>
       <TD width="50%"><B>Astoria Stack</B></TD>
    </TR>
  </THEAD> 
  <TBODY>
    <xsl:for-each select="stackdata/stacks/stack">
    <TR>    
       <TD width="50%"><xsl:value-of select="name" /></TD>      
       <TD width="50%"><xsl:value-of select="version" /></TD>
       <TD width="50%"><xsl:value-of select="vaulturl" /></TD> 
       <TD width="50%"><xsl:value-of select="epchost" /></TD> 
       <TD width="50%"><xsl:value-of select="loadbal" /></TD> 
       <TD width="50%"><xsl:value-of select="lifestate" /></TD> 
       <TD width="50%"><xsl:value-of select="vsasync" /></TD> 
       <TD width="50%"><xsl:value-of select="eprint" /></TD> 
       <TD width="50%"><xsl:value-of select="astoria" /></TD>  
    </TR>
    </xsl:for-each>
  </TBODY>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

