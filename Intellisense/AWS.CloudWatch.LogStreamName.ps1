$ScriptBlock = {
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  $LogGroupName = $fakeBoundParameter.LogGroupName
  if ($LogGroupName) {
    (Get-CWLLogStream -LogGroupName $LogGroupName).LogStreamName | Where-Object -FilterScript { $PSItem -match $wordToComplete }
  }
}

$Completer = @{
  CommandName = (Get-Command -ParameterName LogStreamName).Name
  ParameterName = 'LogStreamName'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer