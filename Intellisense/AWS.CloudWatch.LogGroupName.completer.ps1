<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$ScriptBlock = {
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  (Get-CWLLogGroup).LogGroupName | Where-Object -FilterScript { $PSItem -match $wordToComplete }
}

# (Get-Command -ParameterName LogGroupName).Name -replace '.*', '''$0'
$Completer = @{
  CommandName = @(
    'Get-CWLLogEvents'
    'Get-CWLLogStreams'
    'Get-CWLMetricFilters'
    'Get-CWLSubscriptionFilters'
    'New-EC2FlowLogs'
    'Write-CWLLogEvents'
    'Add-CWLLogGroupTag'
    'Get-CWLFilteredLogEvent'
    'Get-CWLLogEvent'
    'Get-CWLLogGroupTag'
    'Get-CWLLogStream'
    'Get-CWLMetricFilter'
    'Get-CWLSubscriptionFilter'
    'New-CWLExportTask'
    'New-CWLLogGroup'
    'New-CWLLogStream'
    'New-EC2FlowLog'
    'Register-CWLKmsKey'
    'Remove-CWLLogGroup'
    'Remove-CWLLogGroupTag'
    'Remove-CWLLogStream'
    'Remove-CWLMetricFilter'
    'Remove-CWLRetentionPolicy'
    'Remove-CWLSubscriptionFilter'
    'Unregister-CWLKmsKey'
    'Write-CWLLogEvent'
    'Write-CWLMetricFilter'
    'Write-CWLRetentionPolicy'
    'Write-CWLSubscriptionFilter'
  )
  ParameterName = 'LogGroupName'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer