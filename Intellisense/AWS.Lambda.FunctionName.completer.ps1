$ScriptBlock = {
  (Get-LMFunctionList).FunctionName
}

<#
Get-AWSCmdletName -Service Lambda |
  Where-Object -FilterScript { Get-Command -Name $PSItem.CmdletName -ParameterName FunctionName -ErrorAction Ignore } |
  ForEach-Object -Process { "'{0}'" -f $PSItem.CmdletName }
#>
$Completer = @{
  CommandName = @(
    'Add-LMPermission'
    'Get-LMAlias'
    'Get-LMAliasList'
    'Get-LMEventSourceMappingList'
    'Get-LMFunction'
    'Get-LMFunctionConfiguration'
    'Get-LMPolicy'
    'Get-LMVersionsByFunction'
    'Invoke-LMFunctionAsync'
    'Invoke-LMFunction'
    'New-LMAlias'
    'New-LMEventSourceMapping'
    'Publish-LMFunction'
    'Publish-LMVersion'
    'Remove-LMAlias'
    'Remove-LMFunction'
    'Remove-LMPermission'
    'Update-LMAlias'
    'Update-LMEventSourceMapping'
    'Update-LMFunctionCode'
    'Update-LMFunctionConfiguration'
  )
  ParameterName = 'FunctionName'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer