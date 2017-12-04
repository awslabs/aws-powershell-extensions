$ScriptBlock = {
  [CmdletBinding()]
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  (Get-IAMRoleList).Arn | Where-Object -FilterScript { $PSItem -match $wordToComplete }
}

<#
Get-Command -Module AWSPowerShell.NetCore -ParameterName RoleArn |
  ForEach-Object -Process { "'{0}'" -f $PSItem.Name }
#>
$Completer = @{
  CommandName = @(
    'Add-AASScalableTarget'
    'Add-GGRoleToGroup'
    'Add-GGServiceRoleToAccount'
    'Add-RDSRoleToDBCluster'
    'Find-KINAInputSchema'
    'Initialize-AWSDefaultConfiguration'
    'New-AWSCredential'
    'New-CFNChangeSet'
    'New-CFNStack'
    'New-CGIPGroup'
    'New-EMLChannel'
    'New-MLDataSourceFromRDS'
    'New-MLDataSourceFromRedshift'
    'New-SFNStateMachine'
    'New-SNOWCluster'
    'New-SNOWJob'
    'Register-INSCrossAccountAccessRole'
    'Remove-CFNStack'
    'Remove-RDSRoleFromDBCluster'
    'Resume-CFNUpdateRollback'
    'Set-AWSCredential'
    'Update-CFNStack'
    'Update-CGIPGroup'
    'Update-SFNStateMachine'
    'Update-SNOWCluster'
    'Update-SNOWJob'
    'Use-STSRole'
    'Use-STSRoleWithSAML'
    'Use-STSWebIdentityRole'
    'Write-ASLifecycleHook'
    'Write-CWERule'
    'Write-CWLDestination'
    'Write-CWLSubscriptionFilter'
    )
  ParameterName = 'RoleArn'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer