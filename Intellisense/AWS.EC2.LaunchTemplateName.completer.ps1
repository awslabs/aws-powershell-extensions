<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$ScriptBlock = {
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  $TemplateList = Get-EC2Template | Where-Object -FilterScript {
    $PSItem.LaunchTemplateId -match $wordToComplete -or
    $PSItem.LaunchTemplateName -match $wordToComplete
  }
  $TemplateList.LaunchTemplateName
}

# (Get-Command -Module AWSPowerShell* -ParameterName LaunchTemplateName).Name -replace '.*', '''$0'
$Completer = @{
  CommandName = @(
    'Edit-EC2LaunchTemplate'
    'Get-EC2Template'
    'Get-EC2TemplateVersion'
    'New-EC2LaunchTemplate'
    'New-EC2LaunchTemplateVersion'
    'Remove-EC2LaunchTemplate'
    'Remove-EC2TemplateVersion'
  )
  ParameterName = 'LaunchTemplateName'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer