$ScriptBlock = {
  (Get-CWMetricList).Namespace | Select-Object -Unique | Sort-Object
}

<#
Get-Command -Module AWSPowerShell.NetCore -Name *-cw* -ParameterName Namespace |
  ForEach-Object -Process { "'{0}'" -f $PSItem.Name }
#>

$Completer = @{
  CommandName = @(
    'Get-CWMetrics'
    'Get-CWMetricStatistics'
    'Get-CWAlarmForMetric'
    'Get-CWMetricList'
    'Get-CWMetricStatistic'
    'Write-CWMetricAlarm'
    'Write-CWMetricData'
  )
  ParameterName = 'Namespace'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer
