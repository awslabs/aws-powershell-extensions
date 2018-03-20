<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$ScriptBlock = {
  [CmdletBinding()]
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  $Bucket = $fakeBoundParameter['BucketName']
  if ($Bucket) {
    (Get-S3Object -BucketName $Bucket -MaxKey 200).Key | Where-Object -FilterScript { $PSItem -match $wordToComplete }
  }
}

# (Get-Command -ParameterName key -Module aws* -Name *s3*) -replace '.*', '''$0'
$Completer = @{
  CommandName = @(
    'Copy-S3Object'
    'Get-S3ACL'
    'Get-S3Object'
    'Get-S3ObjectMetadata'
    'Get-S3ObjectTagSet'
    'Get-S3PreSignedURL'
    'Read-S3Object'
    'Remove-S3Object'
    'Remove-S3ObjectTagSet'
    'Restore-S3Object'
    'Set-S3ACL'
    'Write-S3Object'
    'Write-S3ObjectTagSet'
  )
  ParameterName = 'Key'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer