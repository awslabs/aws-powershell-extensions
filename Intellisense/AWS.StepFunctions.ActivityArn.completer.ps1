<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$ScriptBlock = {
  [CmdletBinding()]
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  (Get-SFNActivityList).ActivityArn | 
    Where-Object -FilterScript { $PSItem -match $wordToComplete }
}

<#
Get-Command -Module AWSPowerShell.NetCore -ParameterName ActivityArn |
  ForEach-Object -Process { "'{0}'" -f $PSItem.Name }
#>
$Completer = @{
  CommandName = @(
    'Get-SFNActivity'
    'Get-SFNActivityTask'
    'Remove-SFNActivity'
  )
  ParameterName = 'ActivityArn'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer