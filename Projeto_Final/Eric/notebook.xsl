<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Galeria de Produtos - Notebook</title>
                <style>
                    ul {
                        list-style-type: none;
                        margin: 0;
                        padding: 0;
                        overflow: hidden;
                        background-color: #333;
                    }
            
                    li {
                        float: left;
                    }
            
                    li a {
                        display: block;
                        color: white;
                        text-align: center;
                        padding: 14px 16px;
                        text-decoration: none;
                    }
            
                    li a:hover:not(.active) {
                        background-color: #111;
                    }
            
                    .active {
                        background-color: #4CAF50;
                    }
            
                    /*
                    div.gallery {
                        margin: 5px;
                        border: 1px solid #ccc;
                        float: left;
                        width: 180px;
                    }
            
                    div.gallery:hover {
                        border: 1px solid #777;
                    }
            
                    div.gallery img {
                        width: 100%;
                        height: auto;
                    }
            
                    div.desc {
                        padding: 15px;
                        text-align: center;
                    }
                */
                    * {
                        box-sizing: border-box;
                    }
            
                    body {
                        background-color: #f1f1f1;
                        padding: 20px;
                        font-family: Arial;
                    }
            
                    /* Center website */
                    .main {
                        max-width: 1000px;
                        margin: auto;
                    }
            
                    h1 {
                        font-size: 50px;
                        word-break: break-all;
                    }
            
                    .row {
                        margin: 8px -16px;
                    }
            
                    /* Add padding BETWEEN each column */
                    .row,
                    .row>.column {
                        padding: 8px;
                    }
            
                    /* Create four equal columns that floats next to each other */
                    .column {
                        float: left;
                        width: 25%;
                    }
            
                    /* Clear floats after rows */
                    .row:after {
                        content: "";
                        display: table;
                        clear: both;
                    }
            
                    /* Content */
                    .content {
                        background-color: white;
                        padding: 10px;
                    }
            
                    /* Responsive layout - makes a two column-layout instead of four columns */
                    @media screen and (max-width: 900px) {
                        .column {
                            width: 50%;
                        }
                    }
            
                    /* Responsive layout - makes the two columns stack on top of each other instead of next to each other */
                    @media screen and (max-width: 600px) {
                        .column {
                            width: 100%;
                        }
                    }
            
                    .btn {
                        border: none;
                        /* Remove borders */
                        color: white;
                        /* Add a text color */
                        padding: 14px 28px;
                        /* Add some padding */
                        cursor: pointer;
                        /* Add a pointer cursor on mouse-over */
                    }
            
                    .danger {
                        background-color: #f44336;
                    }
            
                    /* Red */
                    .danger:hover {
                        background: #da190b;
                    }
                </style>
            </head>
            <body>
                <ul>
                    <li><a href="celular.xml">Celular</a></li>
                    <li><a class="active" href="notebook.xml">Notebook</a></li>
                    <li><a href="tablet.xml">Tablet</a></li>
                </ul>
                <div class="row">
                    <xsl:for-each select="produtos/produto [tipo = 'notebook']">
                        <xsl:sort select="nome" />
                        <div class="column">
                            <div class="content">
                                <img src="imagens/{imagem}" alt="{nome}" style="width:100%" />
                                <h3>
                                    <xsl:value-of select="nome" />
                                </h3>
                                <p>
                                    <b>Marca: </b>
                                    <xsl:value-of select="marca" />
                                </p>
                                <p>
                                    <b>Preço: </b>
                                    <xsl:value-of select="preco" />
                                        <xsl:if test="(preco &lt;= 1600)">
                                            <button class="btn danger">Promoção</button>
                                        </xsl:if>
                                </p>
                                <xsl:for-each select="descricao">
                                    <p>
                                        <xsl:value-of select="text()" />
                                    </p>
                                </xsl:for-each>
                            </div>
                        </div>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>