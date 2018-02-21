﻿$ErrorActionPreference = 'Stop';

$toolsPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName = 'tablacus'
  file        = "$toolsPath\te180221.zip"
  destination = "$toolsPath"
}

Get-ChocolateyUnzip @packageArgs

Remove-Item "$toolsPath\*.zip" -ea 0 -Force
