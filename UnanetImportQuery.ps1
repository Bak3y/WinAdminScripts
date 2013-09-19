$a = schtasks /query /tn UnanetMCX /s gcs
Write-Host $a[4]