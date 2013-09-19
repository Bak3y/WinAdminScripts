$Excel = New-Object -Com Excel.Application
$Excel.Visible = $True

$WorkBook = $Excel.WorkBooks.Add()
$WorkSheet = $WorkBook.WorkSheets.Item(1)

$WorkSheet.Cells.Item(1,1) = "Machine Name"
$WorkSheet.Cells.Item(1,2) = "SCCM Client Status"

$CellRange = $WorkSheet.UsedRange
$CellRange.Interior.ColorIndex = 19
$CellRange.Font.ColorIndex = 11
$intRow = 2

1
$colComputer = Cat C:\hostlist.txt
ForEach ($strComputer in $colComputer)
{$colItems = GWMI -cl "win32_service" -computer $strComputer -filter "name like 'ccmexec'"


ForEach ($objItem in $colItems){
$Worksheet.Cells.Item($intRow, 1) = $strComputer.ToUpper()
$Worksheet.Cells.Item($intRow, 2) = $objItem.State

$intRow = $intRow + 1}}
$Cellrange.Font.Bold = $True
$Cellrange.EntireColumn.AutoFit()
Clear