$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir         = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$uninstallCommand = "python  $toolsDir\get-poetry.py --uninstall -y"
Start-ChocolateyProcessAsAdmin $uninstallCommand