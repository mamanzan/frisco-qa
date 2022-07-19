#https://devio.wordpress.com/2009/09/15/command-line-xslt-processor-with-powershell/
param ($xml, $xsl, $output)

echo $xml
echo $xsl
echo $output

if (-not $xml -or -not $xsl -or -not $output)
{
	Write-Host "& .\xslt.ps1 [-xml] xml-input [-xsl] xsl-input [-output] transform-output"
	exit;
}

trap [Exception]
{
	Write-Host $_.Exception;
}

$xslt = New-Object System.Xml.Xsl.XslCompiledTransform;
$xslt.Load($xsl);
$xslt.Transform($xml, $output);

Write-Host "generated" $output;