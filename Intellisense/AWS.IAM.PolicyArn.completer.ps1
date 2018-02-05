$ScriptBlock = {
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  (Get-IAMPolicyList).Arn | Where-Object -FilterScript {
    $PSItem -match $wordToComplete
  }
}

$Completer = @{
  CommandName = (Get-Command -Module AWSPowerShell* -ParameterName PolicyArn -Name *IAM*).Name
  ParameterName = 'PolicyArn'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer