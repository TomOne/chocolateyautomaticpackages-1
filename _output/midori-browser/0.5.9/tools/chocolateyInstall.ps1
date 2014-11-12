﻿$packageName = 'midori-browser'
$installerType = 'EXE'
$url = 'http://midori-browser.org/downloads/midori_0.5.9_32_.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes