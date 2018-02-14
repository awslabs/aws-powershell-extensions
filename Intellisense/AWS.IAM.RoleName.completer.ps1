$ScriptBlock = {
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  Get-IAMRoleList | Where-Object -FilterScript { 
    $PSItem.RoleName -match $wordToComplete -or
    $PSItem.Description -match $wordToComplete
  }
}

$Completer = @{
  CommandName = (Get-Command -Module AWSPowerShell.NetCore -ParameterName RoleName).Name
  ParameterName = 'RoleName'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer