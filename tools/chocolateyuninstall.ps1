$ErrorActionPreference = 'Stop'; # stop on all errors

$ErrorActionPreference = 'Stop'; # stop on all errors

# Define the variables for the installation
$packageName = 'poetry'
$url = 'https://install.python-poetry.org'
$filePath = Join-Path $env:TEMP 'install-poetry.py'

# Download the installation script using Chocolatey helper
Get-ChocolateyWebFile -packageName $packageName -Url $url -FileFullPath $filePath

# Run the downloaded script using Python
$uninstallCommand = "py `"$filePath`" --uninstall"
Start-ChocolateyProcessAsAdmin $uninstallCommand

# Clean up the installation file after installation
Remove-Item $filePath -Force