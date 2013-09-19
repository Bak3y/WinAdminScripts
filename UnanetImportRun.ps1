schtasks /run /tn UnanetMCX /s gcs
 while($true){
	$status=schtasks /query /tn UnanetMCX /s gcs|select-string -patt "UnanetMCX"
	write-host $status
	if($status.tostring().substring(64,7) -eq "Running"){"Still running..."}else{break}
   start-sleep -s 5
 }
 "Done"