<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$ScriptBlock = {
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  (Get-IAMPolicyList).Arn | Where-Object -FilterScript {
    $PSItem -match $wordToComplete
  }
}

# (Get-Command -Module AWSPowerShell* -ParameterName PolicyArn -Name *IAM*).Name -replace '.*', '''$0'
$Completer = @{
  CommandName = @(
    'Get-IAMPolicyVersions'
    'Get-IAMEntitiesForPolicy'
    'Get-IAMPolicy'
    'Get-IAMPolicyVersion'
    'Get-IAMPolicyVersionList'
    'New-IAMPolicyVersion'
    'Register-IAMGroupPolicy'
    'Register-IAMRolePolicy'
    'Register-IAMUserPolicy'
    'Remove-IAMPolicy'
    'Remove-IAMPolicyVersion'
    'Set-IAMDefaultPolicyVersion'
    'Unregister-IAMGroupPolicy'
    'Unregister-IAMRolePolicy'
    'Unregister-IAMUserPolicy'
  )
  ParameterName = 'PolicyArn'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer