<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$ScriptBlock = {
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)
  (Get-SSMDocumentList).Name | Where-Object -FilterScript { $PSItem -match $wordToComplete }
}

<#
Get-Command -Module AWSPowerShell.NetCore -ParameterName DocumentName -Name *SSM* |
  ForEach-Object -Process { "'{0}'" -f $PSItem.Name }
#>
$Completer = @{
  CommandName = @(
    'Send-SSMCommand'
    'Start-SSMAutomationExecution'
  )
  ParameterName = 'DocumentName'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer

<#
Get-Command -Module AWSPowerShell.NetCore -ParameterName Name -Name *SSM*Docu* |
  ForEach-Object -Process { "'{0}'" -f $PSItem.Name }
#>
$Completer = @{
  CommandName = @(
    'Edit-SSMDocumentPermission'
    'Get-SSMDocument'
    'Get-SSMDocumentDescription'
    'Get-SSMDocumentPermission'
    'Get-SSMDocumentVersionList'
    'New-SSMDocument'
    'Remove-SSMDocument'
    'Update-SSMDocument'
    'Update-SSMDocumentDefaultVersion'
  )
  ParameterName = 'Name'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer