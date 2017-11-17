$ScriptBlock = {
  (Get-IAMPolicyList).PolicyName
}

<#
Get-Command -Module AWSPowerShell.NetCore -ParameterName PolicyName -Name *IAM* |
  ForEach-Object -Process { "'{0}'" -f $PSItem.Name }
#>
$Completer = @{
  CommandName = @(
    'Get-IAMGroupPolicy'
    'Get-IAMRolePolicy'
    'Get-IAMUserPolicy'
    'New-IAMPolicy'
    'Remove-IAMGroupPolicy'
    'Remove-IAMRolePolicy'
    'Remove-IAMUserPolicy'
    'Write-IAMGroupPolicy'
    'Write-IAMRolePolicy'
    'Write-IAMUserPolicy'
  )
  ParameterName = 'PolicyName'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer