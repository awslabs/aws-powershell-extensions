$ScriptBlock = {
  (Get-ASAutoScalingGroup).AutoScalingGroupName
}

<#
Get-Command -Module AWSPowerShell.NetCore -ParameterName AutoScalingGroupName |
  ForEach-Object -Process { "'{0}'" -f $PSItem.Name }
#>
$Completer = @{
  CommandName = @(
    'Add-ASInstances'
    'Dismount-ASInstances'
    'Get-ASLifecycleHooks'
    'Add-ASLoadBalancer'
    'Add-ASLoadBalancerTargetGroup'
    'Complete-ASLifecycleAction'
    'Disable-ASMetricsCollection'
    'Dismount-ASInstance'
    'Dismount-ASLoadBalancer'
    'Dismount-ASLoadBalancerTargetGroup'
    'Enable-ASMetricsCollection'
    'Enter-ASStandby'
    'Exit-ASStandby'
    'Get-ASAutoScalingGroup'
    'Get-ASLifecycleHook'
    'Get-ASLoadBalancer'
    'Get-ASLoadBalancerTargetGroup'
    'Get-ASNotificationConfiguration'
    'Get-ASPolicy'
    'Get-ASScalingActivity'
    'Get-ASScheduledAction'
    'Mount-ASInstance'
    'New-ASAutoScalingGroup'
    'Remove-ASAutoScalingGroup'
    'Remove-ASLifecycleHook'
    'Remove-ASNotificationConfiguration'
    'Remove-ASPolicy'
    'Remove-ASScheduledAction'
    'Resume-ASProcess'
    'Set-ASDesiredCapacity'
    'Set-ASInstanceProtection'
    'Start-ASPolicy'
    'Suspend-ASProcess'
    'Update-ASAutoScalingGroup'
    'Write-ASLifecycleActionHeartbeat'
    'Write-ASLifecycleHook'
    'Write-ASNotificationConfiguration'
    'Write-ASScalingPolicy'
    'Write-ASScheduledUpdateGroupAction'
  )
  ParameterName = 'AutoScalingGroupName'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer
