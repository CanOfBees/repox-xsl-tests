<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
  xmlns:dc="http://purl.org/dc/elements/1.1/"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.openarchives.org/OAI/2.0/oai_dc/ http://www.openarchives.org/OAI/2.0/oai_dc.xsd"
  exclude-result-prefixes="#all"
  version="2.0">
  <!-- stylesheet test for REPOX -->
  
  <!-- identity transforms OAI_DC with a TWIST!! -->
  
  <!-- http://unicorn.lib.utk.edu:8080/repox-gui-2.6.0-SNAPSHOT/OAIHandler?verb=ListRecords&set=p16877coll2&metadataPrefix=oai_dc 
  -->
  
  <xsl:output method="xml" indent="yes"/>
  <xsl:strip-space elements="*"/>
  
  <xsl:template match="element()">
    <xsl:copy>
      <xsl:apply-templates select="@*,node()"/>
    </xsl:copy>
  </xsl:template>
  
  <xsl:template match="attribute()">
    <xsl:copy/>
  </xsl:template>
  
  <xsl:template match="dc:title">
    <dc:title>
      <xsl:value-of select="concat('bridger was here. also, the original title: ',.)"/>
    </dc:title>
  </xsl:template>
  
</xsl:stylesheet>