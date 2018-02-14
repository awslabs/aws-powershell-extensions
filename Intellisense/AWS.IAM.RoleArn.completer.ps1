$ScriptBlock = {
  [CmdletBinding()]
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  (Get-IAMRoleList).Arn | Where-Object -FilterScript { $PSItem -match $wordToComplete }
}

$Completer = @{
  CommandName = (Get-Command -Module AWSPowerShell.NetCore -ParameterName RoleArn).Name
  ParameterName = 'RoleArn'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer