$ScriptBlock = {
  [CmdletBinding()]
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  (Get-IAMInstanceProfileList).InstanceProfileName | Where-Object -FilterScript { $PSItem -match $wordToComplete }
}

<#
Get-Command -Name *-* -ParameterName InstanceProfileName |
  ForEach-Object -Process { "'{0}'" -f $PSItem.Name }
#>
$Completer = @{
  CommandName = @(
    'Add-IAMRoleToInstanceProfile'
    'Get-IAMInstanceProfile'
    'New-IAMInstanceProfile'
    'Remove-IAMInstanceProfile'
    'Remove-IAMRoleFromInstanceProfile'
  )
  ParameterName = 'InstanceProfileName'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer