<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  	<xsl:template match="/">
		<article class="owl-carousel owl-theme list-items">
				<!--Call Banner Child-->
			<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
		</article>
		<h3>
			<xsl:value-of select="/BannerList/ZoneTitle"></xsl:value-of>
		</h3>
	</xsl:template>

	<!--Begin Banner Child-->
	<xsl:template match="Banner">
		<!--item-->
		<div class="item">
			<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
			</img>
		</div>
	</xsl:template>


</xsl:stylesheet>