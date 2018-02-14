<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$ScriptBlock = {
  (Get-IAMUserList).UserName
}

<#
Get-Command -Module AWSPowerShell.NetCore -ParameterName UserName -Name *IAM* |
  ForEach-Object -Process { "'{0}'" -f $PSItem.Name }
#>
$Completer = @{
  CommandName = @(
    'Get-IAMAttachedUserPolicies'
    'Get-IAMUserPolicies'
    'Add-IAMUserToGroup'
    'Disable-IAMMFADevice'
    'Enable-IAMMFADevice'
    'Get-IAMAccessKey'
    'Get-IAMAttachedUserPolicyList'
    'Get-IAMGroupForUser'
    'Get-IAMLoginProfile'
    'Get-IAMMFADevice'
    'Get-IAMServiceSpecificCredentialList'
    'Get-IAMSigningCertificate'
    'Get-IAMSSHPublicKey'
    'Get-IAMSSHPublicKeyList'
    'Get-IAMUser'
    'Get-IAMUserPolicy'
    'Get-IAMUserPolicyList'
    'New-IAMAccessKey'
    'New-IAMLoginProfile'
    'New-IAMServiceSpecificCredential'
    'New-IAMUser'
    'Publish-IAMSigningCertificate'
    'Publish-IAMSSHPublicKey'
    'Register-IAMUserPolicy'
    'Remove-IAMAccessKey'
    'Remove-IAMLoginProfile'
    'Remove-IAMServiceSpecificCredential'
    'Remove-IAMSigningCertificate'
    'Remove-IAMSSHPublicKey'
    'Remove-IAMUser'
    'Remove-IAMUserFromGroup'
    'Remove-IAMUserPolicy'
    'Reset-IAMServiceSpecificCredential'
    'Sync-IAMMFADevice'
    'Unregister-IAMUserPolicy'
    'Update-IAMAccessKey'
    'Update-IAMLoginProfile'
    'Update-IAMServiceSpecificCredential'
    'Update-IAMSigningCertificate'
    'Update-IAMSSHPublicKey'
    'Update-IAMUser'
    'Write-IAMUserPolicy'
  )
  ParameterName = 'UserName'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer