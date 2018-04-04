<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

# (Get-Command -ParameterName RouteTableId -Module AWSPowerShell*) -replace '.*', '''$0'

$ScriptBlock = {
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)
  
  (Get-EC2RouteTable).RouteTableId | Where-Object -FilterScript { $PSItem -match $wordToComplete }
}

$Completer = @{
  CommandName = @(
    'Disable-EC2VgwRoutePropagation'
    'Enable-EC2VgwRoutePropagation'
    'Get-EC2RouteTable'
    'New-EC2Route'
    'New-EC2VpcEndpoint'
    'Register-EC2RouteTable'
    'Remove-EC2Route'
    'Remove-EC2RouteTable'
    'Set-EC2Route'
    'Set-EC2RouteTableAssociation'
  )
  ParameterName = 'RouteTableId'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer