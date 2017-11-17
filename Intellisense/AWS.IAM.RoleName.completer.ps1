$ScriptBlock = {
  (Get-IAMRoleList).RoleName
}

<#
Get-Command -Module AWSPowerShell.NetCore -ParameterName RoleName |
  ForEach-Object -Process { "'{0}'" -f $PSItem.Name }
#>
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