<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <table>
                <th>apellido</th>
                <th>nombre</th>
                    <h1>Nombre y Apellidos: José Ramírez Sánchez</h1>
                    <tr>
                        <td>
                            <xsl:value-of select="apellido"></xsl:value-of>
                        </td>
                        <td>
                            <xsl:value-of select="nombre"></xsl:value-of>
                        </td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>