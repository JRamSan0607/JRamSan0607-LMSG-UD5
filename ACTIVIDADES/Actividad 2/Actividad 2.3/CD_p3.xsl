<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Album de RVFV - José Ramírez Sánchez</h1>
        <table>
        <tr bgcolor="16739475">
            <th>Título</th>
            <th>Artista</th>
            <th>Sello</th>
            <th>Año de Publicación</th>
            <th>Canción y Tiempo</th>
        </tr>
        <xsl:for-each select="ListaCD/CD[Sello='Sony Music España']">
        <tr>
            <td>
                <xsl:value-of select="TítuloDelAlbum"/>
            </td>
            <td>
                <xsl:value-of select="Artista"/>
            </td>
            <td>
                <xsl:value-of select="Sello"/>
            </td>
            <td>
                <xsl:value-of select="AñoDePublicacion"/>
            </td>
            <td>
                <xsl:for-each select="Canción">
                    <xsl:value-of select="."/>
                    <br/>
            </xsl:for-each>
            </td>
        </tr>
        </xsl:for-each>
    </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>