$computer = Read-Host "Computer?"
$namespace = "root\CIMV2" 
$times = Get-WmiObject -class Win32_LocalTime -computername $computer -namespace $namespace
Foreach ($time in $times) {
"Time : {0}" -f $time.Hour ":" $time.Minute
"Day : {0}" -f $time.Day
"Month : {0}" -f $time.Month
"Year : {0}" -f $time.Year 
}