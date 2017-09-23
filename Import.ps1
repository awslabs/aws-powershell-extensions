$ModuleName = 'AWSPowerShell.Extensions'
if ((Get-Module).Name -contains $ModuleName) {
    Remove-Module -Name $ModuleName
}

$Manifest = Get-ChildItem -Path $PSScriptRoot/*.psd1 -File
foreach ($File in $Manifest) {
    Import-Module -Name $Manifest.FullName
}