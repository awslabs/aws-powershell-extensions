<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$ScriptBlock = {
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  Get-IAMRoleList | Where-Object -FilterScript { 
    $PSItem.RoleName -match $wordToComplete -or
    $PSItem.Description -match $wordToComplete
  }
}

# (Get-Command -Module AWSPowerShell.NetCore -ParameterName RoleName).Name -replace '.*', '''$0'
$Completer = @{
  CommandName = @(
    'Get-IAMAttachedRolePolicies'
    'Get-IAMRolePolicies'
    'Add-IAMRoleToInstanceProfile'
    'Get-IAMAttachedRolePolicyList'
    'Get-IAMInstanceProfileForRole'
    'Get-IAMRole'
    'Get-IAMRolePolicy'
    'Get-IAMRolePolicyList'
    'Import-EC2Image'
    'Import-EC2Snapshot'
    'New-IAMRole'
    'New-ORGAccount'
    'New-SMSReplicationJob'
    'Register-IAMRolePolicy'
    'Remove-CFServiceLinkedRole'
    'Remove-IAMRole'
    'Remove-IAMRoleFromInstanceProfile'
    'Remove-IAMRolePolicy'
    'Remove-IAMServiceLinkedRole'
    'Unregister-IAMRolePolicy'
    'Update-IAMAssumeRolePolicy'
    'Update-IAMRoleDescription'
    'Update-SMSReplicationJob'
    'Write-IAMRolePolicy'
  )
  ParameterName = 'RoleName'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer