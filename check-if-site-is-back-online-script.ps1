# Write-Host "Congratulations! Your first script executed successfully"

# Modules imports
Import-Module BurntToast

$int = 0

while (1){
	$result = ping john.ur.ac.rw:7771/pls/prodi03/w99pkg.mi_login

	Write-Host $result

	if($result -like "Ping request could not find*") {

		
	} else {
		$int = $int + 1

		New-BurntToastNotification -Text 'Check $int: PowerShell notification','Rwanda Application!','Site is online!'

        break
	}

	Start-Sleep -Seconds 60
}
