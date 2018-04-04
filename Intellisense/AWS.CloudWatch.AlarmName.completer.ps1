<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$ScriptBlock = {
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  (Get-CWAlarm).AlarmName | Where-Object -FilterScript {
    $PSItem -match $wordToComplete
  } | ForEach-Object -Process {
    ### NOTE: If CloudWatch Alarm name has spaces, then add single quotes around it
    if ($PSItem -match '\s') {
      "'{0}'" -f $PSItem
    }
    else {
      $PSItem
    }
  }
}

# (Get-Command -ParameterName AlarmName).Name -replace '.*', '''$0'
$Completer = @{
  CommandName = @(
    'Disable-CWAlarmAction'
    'Enable-CWAlarmAction'
    'Get-CWAlarm'
    'Get-CWAlarmHistory'
    'Remove-CWAlarm'
    'Set-CWAlarmState'
    'Write-CWMetricAlarm'
  )
  ParameterName = 'AlarmName'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer