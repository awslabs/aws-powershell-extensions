$ScriptBlock = {
  Get-ECSTaskDefinitionFamilyList
}

<#
Get-AWSCmdletName -Service ECS |
  Where-Object -FilterScript { Get-Command -Name $PSItem.CmdletName -ParameterName TaskDefinition -ErrorAction Ignore } |
  ForEach-Object -Process { "'{0}'" -f $PSItem.CmdletName }
#>
$Completer = @{
  CommandName = @(
    'Get-ECSTaskDefinitionDetail'
    'New-ECSService'
    'New-ECSTask'
    'Start-ECSTask'
    'Unregister-ECSTaskDefinition'
    'Update-ECSService'
  )
  ParameterName = 'TaskDefinition'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer