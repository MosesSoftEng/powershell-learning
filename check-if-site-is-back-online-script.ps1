# Write-Host "Congratulations! Your first script executed successfully"

# Modules imports
Import-Module BurntToast

$int = 0
$url = "john.ur.ac.rw:7771/pls/prodi03/w99pkg.mi_login"

while (1){
	$result = ping $url

	Write-Host "Check ${int}: $result"

	if($result -like "Ping request could not find*") {

		
	} else {

		New-BurntToastNotification -Text 'Check ${int}: PowerShell notification','Rwanda Application!','Site is online!'

        break
	}

    $int = $int + 1
	Start-Sleep -Seconds 60
}
