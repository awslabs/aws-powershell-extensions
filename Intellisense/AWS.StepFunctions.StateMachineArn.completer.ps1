$ScriptBlock = {
  [CmdletBinding()]
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  (Get-SFNStateMachineList).StateMachineArn | 
    Where-Object -FilterScript { $PSItem -match $wordToComplete }
}

<#
Get-Command -Module AWSPowerShell.NetCore -ParameterName StateMachineArn |
  ForEach-Object -Process { "'{0}'" -f $PSItem.Name }
#>
$Completer = @{
  CommandName = @(
    'Get-SFNExecutionList'
    'Get-SFNStateMachine'
    'Remove-SFNStateMachine'
    'Start-SFNExecution'
    'Update-SFNStateMachine'
  )
  ParameterName = 'StateMachineArn'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer