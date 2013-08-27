﻿$packageName = '{{PackageName}}'
$installerType = 'EXE'
#$url = 'http://heanet.dl.sourceforge.net/project/aresgalaxy/aresgalaxy/{anchor1}.exe'
$url = '{{DownloadUrl}}'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes