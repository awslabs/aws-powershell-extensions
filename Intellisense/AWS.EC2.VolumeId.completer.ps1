<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

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
