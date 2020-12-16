<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
        <h2 align="center">FILMES DO GÊNERO: Drama</h2>
        <br/>
        <table border="1" align="center">
            <tr>
                <th height="35px" width="200px">Filme</th>
                <th height="35px" width="200px">Duração</th>
            </tr>
            <xsl:for-each select="FILMES/FILME[GENERO='Drama']">
            <tr>
                <td><xsl:value-of select="./TITULO"/></td>
                <td align="center"><xsl:value-of select="./DURACAO"/></td>
            </tr>
            </xsl:for-each>
        </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>