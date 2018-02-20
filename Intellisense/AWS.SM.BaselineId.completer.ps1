<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$ScriptBlock = {
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)
  
  $BaselineList = Get-SSMPatchBaseline | Where-Object -FilterScript { 
    $PSItem.BaselineId -match $wordToComplete -or
    $PSItem.BaselineName -match $wordToComplete -or
    $PSItem.BaselineDescription -match $wordToComplete
  }
  $BaselineList.BaselineId
}

# (Get-Command -Module AWSPowerShell* -ParameterName BaselineId -Name *SSM*).Name -replace '.*', '''$0'
$Completer = @{
  CommandName = @(
    'Get-SSMEffectivePatchesForPatchBaseline'
    'Get-SSMPatchBaselineDetail'
    'Register-SSMDefaultPatchBaseline'
    'Register-SSMPatchBaselineForPatchGroup'
    'Remove-SSMPatchBaseline'
    'Unregister-SSMPatchBaselineForPatchGroup'
    'Update-SSMPatchBaseline'
  )
  ParameterName = 'BaselineId'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer
