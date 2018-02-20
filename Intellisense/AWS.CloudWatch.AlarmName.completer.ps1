<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$ScriptBlock = {
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  (Get-CWAlarm).AlarmName | Where-Object -FilterScript {
    $PSItem -match $wordToComplete
  } | ForEach-Object -Process {
    if ($PSItem -match '\s') {
      "'{0}'" -f $PSItem
    }
    else {
      $PSItem
    }
  }
}

$Completer = @{
  CommandName = (Get-Command -ParameterName AlarmName).Name
  ParameterName = 'AlarmName'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer