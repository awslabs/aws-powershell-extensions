$ScriptBlock = {
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)
  (Get-SSMParameterList).Name | Where-Object -FilterScript { $PSItem -match $wordToComplete }
}

$Completer = @{
  CommandName = (Get-Command -Module AWSPowerShell.NetCore -ParameterName Name -Name *SSM*Param*).Name
  ParameterName = 'Name'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer
