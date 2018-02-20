<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

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

#region Import private and public functions
$FunctionList = Get-ChildItem -Path ('{0}/Functions' -f $ModuleRoot) -File -Filter *.ps1 -Recurse
foreach ($Script in $FunctionList) {
    & $Script.FullName
}

Remove-Variable -Name TypeAdapterList, FunctionList, ScriptList
#endregion