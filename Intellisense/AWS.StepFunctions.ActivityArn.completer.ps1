$ScriptBlock = {
  [CmdletBinding()]
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  (Get-SFNActivityList).ActivityArn | 
    Where-Object -FilterScript { $PSItem -match $wordToComplete }
}

<#
Get-Command -Module AWSPowerShell.NetCore -ParameterName ActivityArn |
  ForEach-Object -Process { "'{0}'" -f $PSItem.Name }
#>
$Completer = @{
  CommandName = @(
    'Get-SFNActivity'
    'Get-SFNActivityTask'
    'Remove-SFNActivity'
  )
  ParameterName = 'ActivityArn'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer