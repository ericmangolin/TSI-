<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <body>
            <h2 align="center">RESTAURANTE PRATO BOM</h2>
            <h3 align="center">-   MENU   -</h3>
            <br/>
            <table border="1" align="center">
                <tr bgcolor="#B0C4DE">
                    <th align="center">Prato</th>
                    <th align="center">Valor</th>
                    <th align="center">Descrição / Detalhes</th>
                    <th align="center">Calorias</th>
                </tr>
                <xsl:for-each select="restaurante/menu">
                <tr>
                    <td><xsl:apply-templates select="./nome"/></td>
                    <td align="center"><xsl:apply-templates select="./preco"/></td>
                    <td align="center"><xsl:apply-templates select="./descricao"/></td>
                    <td align="center"><xsl:apply-templates select="./calorias"/></td>
                </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>