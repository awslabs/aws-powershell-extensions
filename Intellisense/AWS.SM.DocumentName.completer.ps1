$ScriptBlock = {
  (Get-SSMDocumentList).DocumentName
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