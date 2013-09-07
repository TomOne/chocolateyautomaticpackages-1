﻿try {
	$packageName = 'kicad'
    $url = 'http://kicad.tuturutu.cz/windows/kicad-20130823-r4296-windows.zip'
			 
	$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
    Install-ChocolateyZipPackage $packageName $url $unzipLocation

    $targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\kicad.exe"
    Install-ChocolateyDesktopLink $targetFilePath

    Write-ChocolateySuccess $packageName
}   catch {
    Write-ChocolateyFailure $packageName $($_.Exception.Message)
    throw
}