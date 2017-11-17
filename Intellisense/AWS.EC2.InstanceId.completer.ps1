<#
$CommandList = Get-AWSCmdletName -Service 'Amazon Elastic Compute Cloud'
$CommandList += Get-AWSCmdletName -Service 'SSM'
$CommandList |
  Where-Object -FilterScript { Get-Command -Name $PSItem.CmdletName -ParameterName InstanceId -ErrorAction Ignore } |
  ForEach-Object -Process { "'{0}'" -f $PSItem.CmdletName }
#>

$ScriptBlock = {
  (Get-EC2Instance).Instances.InstanceId
}

$Completer = @{
  CommandName = @(
    'Add-EC2ClassicLinkVpc'
    'Add-EC2NetworkInterface'
    'Add-EC2Volume'
    'Confirm-EC2ProductInstance'
    'Dismount-EC2ClassicLinkVpc'
    'Dismount-EC2Volume'
    'Edit-EC2InstanceAttribute'
    'Edit-EC2InstancePlacement'
    'Get-EC2ClassicLinkInstance'
    'Get-EC2ConsoleOutput'
    'Get-EC2ConsoleScreenshot'
    'Get-EC2InstanceAttribute'
    'Get-EC2Instance'
    'Get-EC2InstanceStatus'
    'Get-EC2PasswordData'
    'New-EC2Image'
    'New-EC2InstanceBundle'
    'New-EC2InstanceExportTask'
    'New-EC2Route'
    'Register-EC2Address'
    'Register-EC2IamInstanceProfile'
    'Remove-EC2Instance'
    'Reset-EC2InstanceAttribute'
    'Restart-EC2Instance'
    'Send-EC2InstanceStatus'
    'Set-EC2Route'
    'Start-EC2Instance'
    'Start-EC2InstanceMonitoring'
    'Stop-EC2Instance'
    'Stop-EC2InstanceMonitoring'
    'Get-SSMAssociation'
    'Get-SSMCommand'
    'Get-SSMCommandInvocation'
    'Get-SSMCommandInvocationDetail'
    'Get-SSMDeployablePatchSnapshotForInstance'
    'Get-SSMEffectiveInstanceAssociationList'
    'Get-SSMInstanceAssociationsStatus'
    'Get-SSMInstancePatch'
    'Get-SSMInstancePatchState'
    'Get-SSMInventoryEntriesList'
    'New-SSMAssociation'
    'Remove-SSMAssociation'
    'Send-SSMCommand'
    'Stop-SSMCommand'
    'Unregister-SSMManagedInstance'
    'Update-SSMAssociationStatus'
    'Update-SSMManagedInstanceRole'
    'Write-SSMInventory'
  )
  ParameterName = 'InstanceId'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer