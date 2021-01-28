<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- http://erikasarti.com/html/dingbats-simbolos-desenhos/ -->
  <xsl:template match="/">
    <html>
      <body>
        <h2>My CD Collection</h2>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th style="text-align:left">Title</th>
            <th style="text-align:left">Artist</th>
          </tr>
          <xsl:for-each select="catalog/cd[price>4]">
            <xsl:sort select="title" />
            <tr>
              <td>
                <xsl:if test="price>=10">&#9762;</xsl:if>
                <xsl:value-of select="title" />
              </td>
              <td>
                <xsl:choose>
                  <xsl:when test="price&gt;30">&#9825;</xsl:when>
                  <xsl:when test="price&gt;20">&#9730;</xsl:when>
                  <xsl:when test="price&gt;10">&#9760;</xsl:when>
                  <xsl:otherwise>&#9992;</xsl:otherwise>
                </xsl:choose>
                <xsl:for-each select="artist">
                  <xsl:value-of select="text()" />
                  <br />
                </xsl:for-each>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>