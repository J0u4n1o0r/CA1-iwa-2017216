<?xml version="1.0"?>
<!--Referencing: Xsl Structure given in class by Mikhail found on https://github.com/mikhail-cct/CA1-In-class-Demo/PaddysCafe.xsl-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
                <table id="destinationsTable" class="indent">
                    <thead>
                        <tr>
                            <th colspan="3">Hello World - Destinations</th>
                        </tr>
                        <tr>
                            <th>Select</th>
                            <th>Destination</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/traveldestinations/section">
                            <tr>
                                <td colspan="3">
                                    <xsl:value-of select="@name" />
                                </td>
                            </tr>
                            <xsl:for-each select="entree">
                            <tr id="{position()}">
                                <xsl:attribute name="europe">
                                    <xsl:value-of select="boolean(./@europe)" />
                                </xsl:attribute>
                                <td align="center">
                                    <input name="item0" type="checkbox" />
                                </td>
                                <td>
                                    <xsl:value-of select="item" />
                                </td>
                                <td align="right">
                                    <xsl:value-of select="price" />
                                </td>
                            </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </tbody>
                </table><br/>
    </xsl:template>
</xsl:stylesheet>
