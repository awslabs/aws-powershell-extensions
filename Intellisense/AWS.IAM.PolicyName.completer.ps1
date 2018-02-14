$ScriptBlock = {
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  (Get-IAMPolicyList).PolicyName | Where-Object -FilterScript { $PSItem -match $wordToComplete }
}

$Completer = @{
  CommandName = (Get-Command -Module AWSPowerShell.NetCore -ParameterName PolicyName -Name *IAM*).Name
  ParameterName = 'PolicyName'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer