<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Employee List</title>
      </head>
      <body>
        <h1>Employee List</h1>
        <table>
          <tr>
            <th>Name</th>
            <th>Phone Numbers</th>
            <th>Address</th>
            <th>Email</th>
          </tr>
          <xsl:for-each select="employee/emp">
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td>
                <ul>
                  <xsl:for-each select="phones/phone">
                    <li><xsl:value-of select="."/></li>
                  </xsl:for-each>
                </ul>
              </td>
              <td>
                <xsl:value-of select="addresses/address/street"/>, 
                <xsl:value-of select="addresses/address/buildingNo"/>, 
                <xsl:value-of select="addresses/address/region"/>, 
                <xsl:value-of select="addresses/address/city"/>, 
                <xsl:value-of select="addresses/address/country"/>
              </td>
              <td><xsl:value-of select="email"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
