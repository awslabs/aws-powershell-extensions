$ModuleRoot = $PSScriptRoot

#region Import Intellisense
$ScriptList = Get-ChildItem -Path ('{0}/Intellisense' -f $ModuleRoot) -File -Filter *.ps1
foreach ($Script in $ScriptList) {
    & $Script.FullName
}
#endregion

#region Import TypeData
$TypeAdapterList = Get-ChildItem -Path ('{0}/TypeAdapter' -f $ModuleRoot) -File -Filter *.ps1

foreach($Script in $TypeAdapterList) {
    foreach ($TypeAdapter in (& $Script.FullName)) {
        Update-TypeData @TypeAdapter
    }
}
#endregion