<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<head>
  <style>
    table{
		border-collapse: collapse;
		margin-top:40px;
	}
	th{color:#ffffff; padding:10px; margin:10px;}
	tr{border-bottom:1px solid #ccc;}
    th,td{padding:10px;}
	a{padding:10px; display:block;}
  </style>
</head>
<body>

		<xsl:variable name="duration" select="sum(/testsuites/testsuite/@time)" />
		<xsl:variable name="total" select="sum(/testsuites/testsuite/@tests)" />
		<xsl:variable name="fail" select="sum(/testsuites/testsuite/@failures)" />
		<xsl:variable name="pass" select="$total - $fail" />
		<xsl:variable name="percent" select="$pass div $total" />
    <a style="font-size:20px;" href="\\VMTMETEAMB100\FriscoQA\">Videos and Screenshots</a>
  <h2>Overall Results</h2>
  <h3 style="display:none;"><xsl:value-of select="format-number($percent * 100, '#')"/>% passing</h3>
  <h4 style="display:none;"><xsl:value-of select="$fail"/> failing</h4>

  <table style="margin-top:40px; padding-top:40px;">
    <thead style="background-color:#0071c5;">
      <tr style="text-align:left; padding:10px; margin:10px;">
          <th></th>
          <th style="text-align:left; padding:10px; margin:10px;">Test Name</th>
          <th style="padding:10px; margin:10px;">Duration</th>
          <th style="padding:10px; margin:10px;">Tests</th>
          <th style="padding:10px; margin:10px;">Passing</th>
          <th style="padding:10px; margin:10px;">Failing</th>
      </tr>
    </thead>
    <tbody>
        <xsl:for-each select="/testsuites/testsuite[not(@name='Root Suite')]">
          <xsl:variable name="i" select="position()" />
          <tr style="border-bottom:1px solid #ccc;">
            <td style="border-bottom:1px solid #ccc;"><xsl:value-of select="$i"/></td>
            <td style="border-bottom:1px solid #ccc;"><xsl:value-of select="@name"/></td>
            <td style="text-align:center; border-bottom:1px solid #ccc;"><xsl:value-of select="format-number(@time div 60, '#.00')"/>m</td>
            <td style="text-align:center; border-bottom:1px solid #ccc;"><xsl:value-of select="@tests"/></td>
            <td style="text-align:center; border-bottom:1px solid #ccc;"><xsl:value-of select="@tests - @failures"/></td>
            <td style="text-align:center; border-bottom:1px solid #ccc;"><xsl:value-of select="@failures"/></td>
          </tr>
        </xsl:for-each>
		<tr>
           <td></td>
		   <td style="font-weight:bold;">Total</td>
		   <td style="font-weight:bold;text-align:center;"><xsl:value-of select="format-number($duration div 60, '#.00')"/>m</td>
		   <td style="font-weight:bold;text-align:center;"><xsl:value-of select="$total"/></td>
		   <td style="font-weight:bold;text-align:center;color:#008a00;"><xsl:value-of select="$pass"/></td>
		   <td style="font-weight:bold;text-align:center;color:#ce0000;"><xsl:value-of select="$fail"/></td>
		</tr>
    </tbody>
  </table>

<h2>Fail Details</h2>
  <table style="margin-top:40px; padding-top:40px;">
    <thead style="background-color:#0071c5;">
      <tr>
          <th></th>
          <th style="text-align:left; padding:10px; margin:10px;">Test Name</th>
          <th style="text-align:center; text-align:left; padding:10px; margin:10px;">Message</th>
      </tr>
    </thead>
    <tbody>
        <xsl:for-each select="testsuites/testsuite[not(@name='Root Suite')]/testcase">
          
			<xsl:for-each select="failure">
			<tr>
			<td style="border-bottom:1px solid #ccc;">
				<xsl:value-of select="count(.|preceding::sec)" />
			</td>
			 <td style="border-bottom:1px solid #ccc;">
			 <xsl:value-of select="../../@name"/>
			 </td>
			  <td style="border-bottom:1px solid #ccc;">
			    <ul>

				 <li><xsl:value-of select="../@name" /></li>
				<li> <xsl:value-of select="@type" /></li>
				 <li><xsl:value-of select="@message" /></li>
				</ul>
			  </td>
			</tr>
			</xsl:for-each>
        </xsl:for-each>
    </tbody>
  </table>

<p>Have a good day! :)</p>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

