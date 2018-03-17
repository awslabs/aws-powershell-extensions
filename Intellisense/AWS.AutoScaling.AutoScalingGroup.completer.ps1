<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$ScriptBlock = {
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  (Get-ASAutoScalingGroup).AutoScalingGroupName | Where-Object -FilterScript { $PSItem -match $wordToComplete }
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
