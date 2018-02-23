<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

# (Get-Command -ParameterName AvailabilityZone -Module AWSPowerShell*) -replace '.*', '''$0'

$ScriptBlock = {
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)
  
  (Get-EC2AvailabilityZone).ZoneName
}

$Completer = @{
  CommandName = @(
    'New-EC2Hosts'
    'Disable-ELBAvailabilityZoneForLoadBalancer'
    'Enable-ELBAvailabilityZoneForLoadBalancer'
    'Get-EC2ReservedInstancesOffering'
    'Get-EC2SpotPriceHistory'
    'New-ASAutoScalingGroup'
    'New-DAXCluster'
    'New-DMSReplicationInstance'
    'New-EC2DefaultSubnet'
    'New-EC2Host'
    'New-EC2Instance'
    'New-EC2Subnet'
    'New-EC2Volume'
    'New-EC2VpnGateway'
    'New-ELBLoadBalancer'
    'New-HSM2Hsm'
    'New-LSDisk'
    'New-LSDiskFromSnapshot'
    'New-LSInstance'
    'New-LSInstancesFromSnapshot'
    'New-OPSInstance'
    'New-RDSDBCluster'
    'New-RDSDBInstance'
    'New-RDSDBInstanceReadReplica'
    'New-RSCluster'
    'Restore-RDSDBClusterFromS3'
    'Restore-RDSDBClusterFromSnapshot'
    'Restore-RDSDBInstanceFromDBSnapshot'
    'Restore-RDSDBInstanceFromS3'
    'Restore-RDSDBInstanceToPointInTime'
    'Restore-RSFromClusterSnapshot'
    'Set-DAXReplicationFactorDecrease'
    'Set-DAXReplicationFactorIncrease'
    'Update-ASAutoScalingGroup'
  )
  ParameterName = 'AvailabilityZone'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer