<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

<#
$CommandList = Get-AWSCmdletName -Service 'Amazon Elastic Compute Cloud'
$CommandList += Get-AWSCmdletName -Service 'SSM'
$CommandList |
  Where-Object -FilterScript { Get-Command -Name $PSItem.CmdletName -ParameterName InstanceId -ErrorAction Ignore } |
  ForEach-Object -Process { "'{0}'" -f $PSItem.CmdletName }
#>

$ScriptBlock = {
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)
  $InstanceList = (Get-EC2Instance).Instances | Where-Object -FilterScript {
    $PSItem.Tag.Key -match $wordToComplete -or
      $PSItem.Tag.Value -match $wordToComplete -or
      $PSItem.InstanceId -match $wordToComplete
  }
  $InstanceList.InstanceId
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