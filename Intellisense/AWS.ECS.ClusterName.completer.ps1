$ScriptBlock = {
  (Get-ECSClusterList).ClusterName
}

<#
Get-AWSCmdletName -Service ECS |
  Where-Object -FilterScript { Get-Command -Name $PSItem.CmdletName -ParameterName Cluster -ErrorAction Ignore } |
  ForEach-Object -Process { "'{0}'" -f $PSItem.CmdletName }
#>
$Completer = @{
  CommandName = @(
    'Get-ECSAttributeList'
    'Get-ECSClusterDetail'
    'Get-ECSClusterService'
    'Get-ECSContainerInstanceDetail'
    'Get-ECSContainerInstanceList'
    'Get-ECSService'
    'Get-ECSTaskDetail'
    'Get-ECSTaskList'
    'New-ECSService'
    'New-ECSTask'
    'Remove-ECSAttribute'
    'Remove-ECSCluster'
    'Remove-ECSService'
    'Start-ECSTask'
    'Stop-ECSTask'
    'Unregister-ECSContainerInstance'
    'Update-ECSContainerAgent'
    'Update-ECSContainerInstancesState'
    'Update-ECSService'
    'Write-ECSAttribute'
  )
  ParameterName = 'Cluster'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer