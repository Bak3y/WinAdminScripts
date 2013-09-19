Clear
$strComputer = Read-Host "Enter Machine Name"
Clear

$colItems = GWMI -cl "Win32_NetworkAdapterConfiguration" -name "root\CimV2" `
-comp $strComputer -filter "IpEnabled = TRUE"

ForEach ($objItem in $colItems)
{Write-Host "Machine Name: " $strComputer
Write-Host "MAC Address: " $objItem.MacAddress
Write-Host "IP Address: " $objItem.IpAddress}