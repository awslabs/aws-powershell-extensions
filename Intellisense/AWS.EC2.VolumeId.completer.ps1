$ScriptBlock = {
  (Get-EC2Volume).VolumeId
}

<#
Get-Command -Module AWSPowerShell.NetCore -ParameterName VolumeId -Name *ec2* |
  ForEach-Object -Process { "'{0}'" -f $PSItem.Name }
#>
$Completer = @{
  CommandName = @(
    'Add-EC2Volume'
    'Dismount-EC2Volume'
    'Edit-EC2Volume'
    'Edit-EC2VolumeAttribute'
    'Enable-EC2VolumeIO'
    'Get-EC2Volume'
    'Get-EC2VolumeAttribute'
    'Get-EC2VolumeModification'
    'Get-EC2VolumeStatus'
    'New-EC2Snapshot'
    'Remove-EC2Volume'
  )
  ParameterName = 'VolumeId'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer
