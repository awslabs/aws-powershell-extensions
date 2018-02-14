<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$ScriptBlock = {
  (Get-CFNStack).StackName
}

<#
Get-AWSCmdletName -Service CloudFormation | 
  Where-Object -FilterScript { Get-Command -Name $PSItem.CmdletName -ParameterName StackName -ErrorAction Ignore } |
  ForEach-Object -Process { "'{0}'" -f $PSItem.CmdletName }
#>
$Completer = @{
  CommandName = @(
    'Get-CFNChangeSet'
    'Get-CFNChangeSetList'
    'Get-CFNStack'
    'Get-CFNStackEvent'
    'Get-CFNStackPolicy'
    'Get-CFNStackResource'
    'Get-CFNStackResourceList'
    'Get-CFNStackResourceSummary'
    'Get-CFNTemplate'
    'Get-CFNTemplateSummary'
    'New-CFNChangeSet'
    'New-CFNStack'
    'Remove-CFNChangeSet'
    'Remove-CFNStack'
    'Resume-CFNUpdateRollback'
    'Send-CFNResourceSignal'
    'Set-CFNStackPolicy'
    'Start-CFNChangeSet'
    'Stop-CFNUpdateStack'
    'Test-CFNStack'
    'Update-CFNStack'
    'Update-CFNTerminationProtection'
    'Wait-CFNStack'
  )
  ParameterName = 'StackName'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer

