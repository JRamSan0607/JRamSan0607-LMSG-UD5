<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Mi Lista de CDs - José Ramírez Sánchez</h1>
                <table border="1">
                    <tr bgcolor="16739475">
                        <th>Título</th>
                        <th>Artista</th>
                        <th>Sello</th>
                        <th>Año de Publicación</th>
                        <th>Canción</th>
                        <th>Tiempo</th>
                    </tr>
                    <xsl:for-each select="ListaCD/CD">
                        <xsl:variable name="TítuloDelAlbum">
                            <xsl:value-of select="TítuloDelAlbum"/>
                        </xsl:variable>
                        <xsl:variable name="Artista">
                            <xsl:value-of select="Artista"/>
                        </xsl:variable>
                        <xsl:variable name="Sello">
                            <xsl:value-of select="Sello"/>
                        </xsl:variable>
                        <xsl:variable name="AñoDePublicacion">
                            <xsl:value-of select="AñoDePublicacion"/>
                        </xsl:variable>
                        <xsl:for-each select="Canción">
                            <xsl:if test="@tiempo &lt; 200">
                                <tr>
                                    <td>
                                        <xsl:value-of select="$TítuloDelAlbum"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="$Artista"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="$Sello"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="$AñoDePublicacion"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="."/>
                                        <br/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="@tiempo"/>
                                    </td>
                                </tr>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>