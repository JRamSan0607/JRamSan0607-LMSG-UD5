<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Mi Biblioteca Personal - José Ramírez Sánchez</h1>
        <table>
        <tr bgcolor="89563498">
            <th>ISBN</th>
            <th>Título</th>
            <th>Autor</th>
            <th>Precio</th>
                <td></td>
        </tr>
        <xsl:for-each select="Librería/Libro">
        <tr>
            <td><xsl:value-of select="ISBN"/></td>
            <td><xsl:value-of select="Título"/></td>
            <td><xsl:value-of select="Autor"/></td>
            <td><xsl:value-of select="Precio"/></td>
        </tr>
        </xsl:for-each>    
    </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>