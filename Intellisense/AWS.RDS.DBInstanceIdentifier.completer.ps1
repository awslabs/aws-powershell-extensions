<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

# (Get-Command -ParameterName DBInstanceIdentifier -Module AWSPowerShell*) -replace '.*', '''$0'

$ScriptBlock = {
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)
  
  (Get-RDSDBInstance).DBInstanceIdentifier | Where-Object -FilterScript { $PSItem -match $wordToComplete }
}

$Completer = @{
  CommandName = @(
    'Get-RDSDBLogFiles'
    'Convert-RDSReadReplicaToStandalone'
    'Edit-RDSDBInstance'
    'Get-RDSDBInstance'
    'Get-RDSDBLogFile'
    'Get-RDSDBLogFilePortion'
    'Get-RDSDBSnapshot'
    'Get-RDSValidDBInstanceModification'
    'New-RDSDBInstance'
    'New-RDSDBInstanceReadReplica'
    'New-RDSDBSnapshot'
    'Remove-RDSDBInstance'
    'Restart-RDSDBInstance'
    'Restore-RDSDBInstanceFromDBSnapshot'
    'Restore-RDSDBInstanceFromS3'
    'Start-RDSDBInstance'
    'Stop-RDSDBInstance'
  )
  ParameterName = 'DBInstanceIdentifier'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer