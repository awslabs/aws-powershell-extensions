<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$ScriptBlock = {
  (Get-IAMGroupList).GroupName
}

<#
Get-Command -Module AWSPowerShell.NetCore -ParameterName GroupName -Name *IAM* |
  ForEach-Object -Process { "'{0}'" -f $PSItem.Name }
#>
$Completer = @{
  CommandName = @(
    'Get-IAMAttachedGroupPolicies'
    'Get-IAMGroupPolicies'
    'Add-IAMUserToGroup'
    'Get-IAMAttachedGroupPolicyList'
    'Get-IAMGroup'
    'Get-IAMGroupPolicy'
    'Get-IAMGroupPolicyList'
    'New-IAMGroup'
    'Register-IAMGroupPolicy'
    'Remove-IAMGroup'
    'Remove-IAMGroupPolicy'
    'Remove-IAMUserFromGroup'
    'Unregister-IAMGroupPolicy'
    'Update-IAMGroup'
    'Write-IAMGroupPolicy'
  )
  ParameterName = 'GroupName'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer