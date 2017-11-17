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