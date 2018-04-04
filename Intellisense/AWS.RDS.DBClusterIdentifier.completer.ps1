<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

# (Get-Command -ParameterName DBClusterIdentifier -Module AWSPowerShell*) -replace '.*', '''$0'

$ScriptBlock = {
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)
  
  (Get-RDSDBCluster).DBClusterIdentifier | Where-Object -FilterScript { $PSItem -match $wordToComplete }
}

$Completer = @{
  CommandName = @(
    'Add-RDSRoleToDBCluster'
    'Convert-RDSReadReplicaDBCluster'
    'Edit-RDSDBCluster'
    'Get-RDSDBCluster'
    'Get-RDSDBClusterSnapshot'
    'New-RDSDBCluster'
    'New-RDSDBClusterSnapshot'
    'New-RDSDBInstance'
    'Remove-RDSDBCluster'
    'Remove-RDSRoleFromDBCluster'
    'Restore-RDSDBClusterFromS3'
    'Restore-RDSDBClusterFromSnapshot'
    'Restore-RDSDBClusterToPointInTime'
    'Start-RDSDBClusterFailover'
  )
  ParameterName = 'DBClusterIdentifier'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer