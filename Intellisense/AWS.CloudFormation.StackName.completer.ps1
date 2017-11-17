$ScriptBlock = {
  (Get-CFNStack).StackName
}

<#
Get-AWSCmdletName -Service CloudFormation | 
  Where-Object -FilterScript { Get-Command -Name $PSItem.CmdletName -ParameterName StackName -ErrorAction Ignore } |
  ForEach-Object -Process { "'{0}'" -f $PSItem.CmdletName }
#>
$Completer = @{
  CommandName = @(
    'Get-CFNChangeSet'
    'Get-CFNChangeSetList'
    'Get-CFNStack'
    'Get-CFNStackEvent'
    'Get-CFNStackPolicy'
    'Get-CFNStackResource'
    'Get-CFNStackResourceList'
    'Get-CFNStackResourceSummary'
    'Get-CFNTemplate'
    'Get-CFNTemplateSummary'
    'New-CFNChangeSet'
    'New-CFNStack'
    'Remove-CFNChangeSet'
    'Remove-CFNStack'
    'Resume-CFNUpdateRollback'
    'Send-CFNResourceSignal'
    'Set-CFNStackPolicy'
    'Start-CFNChangeSet'
    'Stop-CFNUpdateStack'
    'Test-CFNStack'
    'Update-CFNStack'
    'Update-CFNTerminationProtection'
    'Wait-CFNStack'
  )
  ParameterName = 'StackName'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer

