$ModuleRoot = $PSScriptRoot

$ScriptList = Get-ChildItem -Path ('{0}/Intellisense' -f $ModuleRoot) -File -Filter *.ps1
foreach ($Script in $ScriptList) {
    & $Script.FullName
}