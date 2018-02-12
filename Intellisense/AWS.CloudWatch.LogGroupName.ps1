$ScriptBlock = {
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  (Get-CWLLogGroup).LogGroupName | Where-Object -FilterScript { $PSItem -match $wordToComplete }
}

$Completer = @{
  CommandName = (Get-Command -ParameterName LogGroupName).Name
  ParameterName = 'LogGroupName'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer