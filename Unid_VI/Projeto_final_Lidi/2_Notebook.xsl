<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>

            <head>
                <title>PRODUTOS</title>
                <link rel="stylesheet" type="text/css" href="style/estilo.css" media="screen" />
            </head>

            <body>

                <ul><p class="nome_loja">Loja da Lidiane</p>
                    <li>
                        <a class="active" href="2_notebook.xml">NETEBOOK</a>
                    </li>
                    <li>
                        <a href="3_tablet.xml">TABLET</a>
                    </li>
                    <li>
                        <a href="1_celular.xml">CELULAR</a>
                    </li>
                </ul>

                <div class="row">
                    <xsl:for-each select="produtos/produto">

                        <xsl:sort select="./marca" />

                        <div class="column">
                            <div class="content">

                                <h2 class="nome_cel">
                                    <xsl:apply-templates select="./nome" />
                                </h2>

                                <xsl:for-each select="./imagem">
                                    <img class="img_cel">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="." />
                                        </xsl:attribute>
                                    </img>
                                </xsl:for-each>

                                <p>
                                    <xsl:apply-templates select="./descricao" />
                                </p>

                                <p>
                                    <b>Marca </b>
                                    <xsl:apply-templates select="./marca" />
                                </p>

                                <xsl:choose>
                                    <xsl:when test="preco &lt; 500">
                                        <p>
                                            <h2>
                                                <b>R$ </b>
                                                <xsl:apply-templates select="./preco" />
                                            </h2>
                                            <button class="btn danger">Promoção</button>
                                        </p>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <p>
                                            <h2>
                                                <b>R$ </b>
                           <xsl:apply-templates select="./preco" />
                                            </h2>
                                            <button class="btn comper">Comprar</button>
                                        </p>
                                    </xsl:otherwise>
                                </xsl:choose>

                            </div>
                        </div>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>