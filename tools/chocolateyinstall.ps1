$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py' # download url, HTTPS preferred
$command    = "(Invoke-WebRequest -Uri $url -UseBasicParsing -OutFile $toolsDir\get-poetry.py) | python $toolsDir\get-poetry.py"
Start-ChocolateyProcessAsAdmin $command
