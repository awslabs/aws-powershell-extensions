<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$ScriptBlock = {
  Get-ECSClusterList | ForEach-Object -Process { $PSItem.Split('/')[-1] }
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