$ScriptBlock = {
  (Get-ASLaunchConfiguration).LaunchConfigurationName
}

<#
Get-Command -Name *-AS* -ParameterName LaunchConfigurationName |
  ForEach-Object -Process { "'{0}'" -f $PSItem.Name }
#>
$Completer = @{
  CommandName = @(
    'Get-ASLaunchConfiguration'
    'New-ASAutoScalingGroup'
    'New-ASLaunchConfiguration'
    'Remove-ASLaunchConfiguration'
    'Update-ASAutoScalingGroup'
  )
  ParameterName = 'LaunchConfigurationName'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer