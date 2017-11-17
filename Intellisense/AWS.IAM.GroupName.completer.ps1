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