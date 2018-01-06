$ScriptBlock = {
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)
  (Get-SSMDocumentList).Name | Where-Object -FilterScript { $PSItem -match $wordToComplete }
}

<#
Get-Command -Module AWSPowerShell.NetCore -ParameterName DocumentName -Name *SSM* |
  ForEach-Object -Process { "'{0}'" -f $PSItem.Name }
#>
$Completer = @{
  CommandName = @(
    'Send-SSMCommand'
    'Start-SSMAutomationExecution'
  )
  ParameterName = 'DocumentName'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer

<#
Get-Command -Module AWSPowerShell.NetCore -ParameterName Name -Name *SSM*Docu* |
  ForEach-Object -Process { "'{0}'" -f $PSItem.Name }
#>
$Completer = @{
  CommandName = @(
    'Edit-SSMDocumentPermission'
    'Get-SSMDocument'
    'Get-SSMDocumentDescription'
    'Get-SSMDocumentPermission'
    'Get-SSMDocumentVersionList'
    'New-SSMDocument'
    'Remove-SSMDocument'
    'Update-SSMDocument'
    'Update-SSMDocumentDefaultVersion'
  )
  ParameterName = 'Name'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer