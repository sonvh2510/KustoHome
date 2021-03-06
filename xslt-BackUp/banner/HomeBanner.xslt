<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  	<xsl:template match="/">
		<xsl:if test="count(/BannerList/Banner) > 0">
			<article class="list-items">
				<!--Call Banner Child-->
				<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
			</article> 
		</xsl:if>
	</xsl:template>

	<!--Begin Banner Child-->
	<xsl:template match="Banner">
		
		<xsl:choose>
			<xsl:when test="position()=1">
				<!--item-->
				<div class="item">
					<img class="img-fluid">
						<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
					</img>
					<div class="title">
						<h1 class="animated fadeInRight">
							<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
						</h1>
					</div>
				</div>
			</xsl:when>



			<xsl:when test="position() > 1">
				<!--item-->
				<div class="item">
					<img class="img-fluid">
						<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
					</img>
					<div class="title">
						<h1 class="animated">
							<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
						</h1>
					</div>
				</div>
			</xsl:when>
		</xsl:choose>
	</xsl:template>


</xsl:stylesheet>