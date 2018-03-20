<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$ScriptBlock = {
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  (Get-GLUECrawlerList).Name | Where-Object -FilterScript { $PSItem -match $wordToComplete }
}

<#
(Get-Command -Name *-GLUE*Craw* -ParameterName Name).Name -replace '.*', '''$0'
#>
$Completer = @{
  CommandName = @(
    'Get-GLUECrawler'
    'New-GLUECrawler'
    'Remove-GLUECrawler'
    'Start-GLUECrawler'
    'Stop-GLUECrawler'
    'Update-GLUECrawler'
  )
  ParameterName = 'Name'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer