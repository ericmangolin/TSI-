<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <body>
            <h2 align="center">AGENDA DE CONTATOS</h2>
            <h3 align="center">-   Clientes   -</h3>
            <br/>
            <table border="1" align="center">
                <tr bgcolor="#B0C4DE">
                    <th align="center">NOME</th>
                    <th align="center">CPF</th>
                    <th align="center">E-MAIL</th>
                    <th align="center">TELEFONE / CELULAR</th>
                    <th align="center">DATA DE NASCIMENTO</th>
                </tr>
                <!--xsl:for-each select="agenda/pessoa">
                <tr>
                    <td><xsl:apply-templates select="./nome"/></td>
                    <td align="center"><xsl:apply-templates select="./cpf"/></td>
                    <td align="center"><xsl:apply-templates select="./email"/></td>
                    <td align="center"><xsl:apply-templates select="./telefone"/></td>
                    <td align="center"><xsl:apply-templates select="./datanasc"/></td>
                </tr>
                </xsl:for-each-->
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>