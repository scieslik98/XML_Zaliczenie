<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
	<html> 
		<head>
			<link rel="Stylesheet" type="text/css" href="css_style.css"/>
		</head>
		<body>
			<xsl:for-each select="//game">
                    <xsl:sort select="@type" order="descending"></xsl:sort>
                    <xsl:sort select="title" order="ascending"></xsl:sort>
                        <div>
                            <h3>
                                <xsl:attribute name="style">
                                    <xsl:choose>
                                        <xsl:when test="@type='strategy'">background: grey;</xsl:when>
                                        <xsl:when test="@type='rpg'">background: green;</xsl:when>
                                        <xsl:otherwise>background: brown;</xsl:otherwise>
                                    </xsl:choose>
                                </xsl:attribute>
                                <h2><xsl:value-of select="title"/></h2>
								<h4><xsl:value-of select="studio"/></h4>
								<h4><xsl:value-of select="year"/></h4>
								<h4><xsl:value-of select="price"/></h4>
								<h4><xsl:value-of select="rating"/></h4>
								<h3>Type: <xsl:value-of select="@type"/></h3>
								<img>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="cover"/>
                                </xsl:attribute>
                            </img>
                            </h3>
                        </div>
                </xsl:for-each>
		</body>
	</html>
	</xsl:template>
</xsl:stylesheet>