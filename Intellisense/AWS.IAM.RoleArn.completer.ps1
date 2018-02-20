<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$ScriptBlock = {
  [CmdletBinding()]
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  (Get-IAMRoleList).Arn | Where-Object -FilterScript { $PSItem -match $wordToComplete }
}

# (Get-Command -Module AWSPowerShell.NetCore -ParameterName RoleArn).Name -replace '.*', '''$0'
$Completer = @{
  CommandName = @(
    'Add-AASScalableTarget'
    'Add-GGRoleToGroup'
    'Add-GGServiceRoleToAccount'
    'Add-RDSRoleToDBCluster'
    'Find-KINAInputSchema'
    'Initialize-AWSDefaultConfiguration'
    'New-AWSCredential'
    'New-CFNChangeSet'
    'New-CFNStack'
    'New-CGIPGroup'
    'New-EMLChannel'
    'New-GLUEDevEndpoint'
    'New-IOTOTAUpdate'
    'New-IOTRoleAlias'
    'New-IOTStream'
    'New-MLDataSourceFromRDS'
    'New-MLDataSourceFromRedshift'
    'New-REKStreamProcessor'
    'New-SFNStateMachine'
    'New-SMNotebookInstance'
    'New-SMTrainingJob'
    'New-SNOWCluster'
    'New-SNOWJob'
    'Register-INSCrossAccountAccessRole'
    'Remove-CFNStack'
    'Remove-RDSRoleFromDBCluster'
    'Resume-CFNUpdateRollback'
    'Set-AWSCredential'
    'Set-IOTV2LoggingOption'
    'Start-IOTThingRegistrationTask'
    'Update-CFNStack'
    'Update-CGIPGroup'
    'Update-EMLChannel'
    'Update-IOTRoleAlias'
    'Update-IOTStream'
    'Update-SFNStateMachine'
    'Update-SMNotebookInstance'
    'Update-SNOWCluster'
    'Update-SNOWJob'
    'Use-STSRole'
    'Use-STSRoleWithSAML'
    'Use-STSWebIdentityRole'
    'Write-ASLifecycleHook'
    'Write-CWERule'
    'Write-CWLDestination'
    'Write-CWLSubscriptionFilter'
  )
  ParameterName = 'RoleArn'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer