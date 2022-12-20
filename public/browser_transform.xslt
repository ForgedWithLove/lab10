<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Ответ</title>
      </head>
      <body>
        <table>
            <tr>
              <th>Число 1</th>
              <th>Число 2</th>
            </tr>
            <xsl:for-each select="hash/value/value">
              <tr>
                <td><xsl:value-of select="value1"></xsl:value-of></td>
                <td><xsl:value-of select="value2"></xsl:value-of></td>
              </tr>
            </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>