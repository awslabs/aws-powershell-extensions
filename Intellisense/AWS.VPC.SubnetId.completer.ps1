<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$ScriptBlock = {
  [CmdletBinding()]
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  (Get-EC2Subnet).SubnetId.Where({ $PSItem -match $wordToComplete })
}

# (Get-Command -Module AWSPowerShell* -ParameterName SubnetId).Name -replace '.*', '''$0'
$Completer = @{
  CommandName = @(
    'Edit-DMSReplicationSubnetGroup'
    'Edit-EC2SubnetAttribute'
    'Edit-ECCacheSubnetGroup'
    'Edit-HSMItem'
    'Edit-RDSDBSubnetGroup'
    'Edit-RSClusterSubnetGroup'
    'Get-EC2Subnet'
    'New-C9EnvironmentEC2'
    'New-DAXSubnetGroup'
    'New-DMSReplicationSubnetGroup'
    'New-EC2Instance'
    'New-EC2NatGateway'
    'New-EC2NetworkInterface'
    'New-EC2VpcEndpoint'
    'New-ECCacheSubnetGroup'
    'New-EFSMountTarget'
    'New-GLUEDevEndpoint'
    'New-HSM2Cluster'
    'New-HSMItem'
    'New-MQBroker'
    'New-OPSInstance'
    'New-OWCMServer'
    'New-RDSDBSubnetGroup'
    'New-RSClusterSubnetGroup'
    'New-SMNotebookInstance'
    'Register-EC2RouteTable'
    'Register-EC2SubnetCidrBlock'
    'Remove-EC2Subnet'
    'Update-DAXSubnetGroup'
  )
  ParameterName = 'SubnetId'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer