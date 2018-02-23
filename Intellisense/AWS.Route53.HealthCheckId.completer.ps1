<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$ScriptBlock = {
  [CmdletBinding()]
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  (Get-R53HealthCheckList).Id.Where({ $PSItem -match $wordToComplete })
}

# (Get-Command -Module AWSPowerShell* -ParameterName HealthCheckId).Name -replace '.*', '''$0'
$Completer = @{
  CommandName = @(
    'Get-R53HealthCheck'
    'Get-R53HealthCheckLastFailureReason'
    'Get-R53HealthCheckStatus'
    'Remove-R53HealthCheck'
    'Update-R53HealthCheck'
  )
  ParameterName = 'HealthCheckId'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer