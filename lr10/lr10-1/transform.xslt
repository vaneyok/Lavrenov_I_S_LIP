<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match='/'>
    <html>
      <head>
        <title>
          Ответ
        </title>
      </head>
      <body>
        <table>
          <tr>
            <th>
              №
            </th>
            <th>
              Число Армстронга
            </th>
          </tr>

          <xsl:for-each select='objects/object'>
            <tr>
              <td>
                <xsl:value-of select='num'/>
              </td>
              <td>
                <xsl:value-of select='elem'/>
              </td>
            </tr>
          </xsl:for-each>

        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

