<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Meus Cds</h2>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>

    <xsl:template match="cd">
        <p>
            <xsl:apply-templates select="title" />
            <xsl:apply-templates select="artist" />
        </p>
    </xsl:template>

    <xsl:template match="title">
        Título:
        <span style="color:#FF7F50">
            <xsl:value-of select="." />
        </span>
        <br/>
    </xsl:template>

    <xsl:template match="artist">
        Artista:
        <span style="color:#66CDAA">
            <xsl:value-of select="." />
        </span>
        <br/>
    </xsl:template>
</xsl:stylesheet>
