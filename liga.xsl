<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/collection">
  <html>
  <body>
  <h2>Liga MX</h2>
    <table border="1">
      <tr>
        <th>Equipo</th>
        <th>Ciudad</th>
        <th>Triunfos</th>
        <th>Jugador</th>
        <th>Numero</th>
        <th>Posicion</th>
      </tr>
      <xsl:for-each select="info">
      <tr>
        <td rowspan="2"><xsl:value-of select="equipo"/></td>
        <td rowspan="2"><xsl:value-of select="ciudad"/></td>
        <td rowspan="2"><xsl:value-of select="triunfos"/></td>

        <xsl:for-each select="jugador">
        <tr>
          <td><xsl:value-of select="nombre"/></td>
          <td><xsl:value-of select="numero"/></td>
          <td><xsl:value-of select="posicion"/></td>
        </tr>
        </xsl:for-each>

      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
