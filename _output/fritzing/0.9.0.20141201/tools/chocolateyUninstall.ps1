$packageName = 'fritzing'
$desktop = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory))
$shortcut_to_remove = "Fritzing.exe.lnk"

try {

	Remove-Item "$desktop\$shortcut_to_remove"
  
	Write-ChocolateySuccess $packageName
	
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw 
}