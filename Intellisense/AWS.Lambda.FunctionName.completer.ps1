<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$ScriptBlock = {
  (Get-LMFunctionList).FunctionName
}

<#
Get-AWSCmdletName -Service Lambda |
  Where-Object -FilterScript { Get-Command -Name $PSItem.CmdletName -ParameterName FunctionName -ErrorAction Ignore } |
  ForEach-Object -Process { "'{0}'" -f $PSItem.CmdletName }
#>
$Completer = @{
  CommandName = @(
    'Add-LMPermission'
    'Get-LMAlias'
    'Get-LMAliasList'
    'Get-LMEventSourceMappingList'
    'Get-LMFunction'
    'Get-LMFunctionConfiguration'
    'Get-LMPolicy'
    'Get-LMVersionsByFunction'
    'Invoke-LMFunctionAsync'
    'Invoke-LMFunction'
    'New-LMAlias'
    'New-LMEventSourceMapping'
    'Publish-LMFunction'
    'Publish-LMVersion'
    'Remove-LMAlias'
    'Remove-LMFunction'
    'Remove-LMPermission'
    'Update-LMAlias'
    'Update-LMEventSourceMapping'
    'Update-LMFunctionCode'
    'Update-LMFunctionConfiguration'
  )
  ParameterName = 'FunctionName'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer