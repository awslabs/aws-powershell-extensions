$ScriptBlock = {
  [CmdletBinding()]
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  (Get-IAMInstanceProfileList).Arn | Where-Object -FilterScript { $PSItem -match $wordToComplete }
}

<#
Get-Command -Name *-* -ParameterName IamInstanceProfile_Arn |
  ForEach-Object -Process { "'{0}'" -f $PSItem.Name }
#>
$Completer = @{
  CommandName = @(
    'New-EC2ScheduledInstance'
    'Register-EC2IamInstanceProfile'
    'Request-EC2SpotInstance'
    'Set-EC2IamInstanceProfileAssociation'
  )
  ParameterName = 'IamInstanceProfile_Arn'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer