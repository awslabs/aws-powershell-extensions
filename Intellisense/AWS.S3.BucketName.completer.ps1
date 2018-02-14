<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$ScriptBlock = {
  (Get-S3Bucket).BucketName
}

<#
Get-Command -Module AWSPowerShell.NetCore -ParameterName BucketName |
  ForEach-Object -Process { "'{0}'" -f $PSItem.Name }
#>
$Completer = @{
  CommandName = @(
    'Remove-S3MultipartUploads'
    'Copy-S3Object'
    'Enable-RSLogging'
    'Get-S3ACL'
    'Get-S3Bucket'
    'Get-S3BucketAccelerateConfiguration'
    'Get-S3BucketAnalyticsConfiguration'
    'Get-S3BucketAnalyticsConfigurationList'
    'Get-S3BucketEncryption'
    'Get-S3BucketInventoryConfiguration'
    'Get-S3BucketInventoryConfigurationList'
    'Get-S3BucketLocation'
    'Get-S3BucketLogging'
    'Get-S3BucketMetricsConfiguration'
    'Get-S3BucketMetricsConfigurationList'
    'Get-S3BucketNotification'
    'Get-S3BucketPolicy'
    'Get-S3BucketReplication'
    'Get-S3BucketRequestPayment'
    'Get-S3BucketTagging'
    'Get-S3BucketVersioning'
    'Get-S3BucketWebsite'
    'Get-S3CORSConfiguration'
    'Get-S3LifecycleConfiguration'
    'Get-S3Object'
    'Get-S3ObjectMetadata'
    'Get-S3ObjectTagSet'
    'Get-S3PreSignedURL'
    'Get-S3Version'
    'New-S3Bucket'
    'Publish-LMFunction'
    'Read-S3Object'
    'Remove-S3Bucket'
    'Remove-S3BucketAnalyticsConfiguration'
    'Remove-S3BucketEncryption'
    'Remove-S3BucketInventoryConfiguration'
    'Remove-S3BucketMetricsConfiguration'
    'Remove-S3BucketPolicy'
    'Remove-S3BucketReplication'
    'Remove-S3BucketTagging'
    'Remove-S3BucketWebsite'
    'Remove-S3CORSConfiguration'
    'Remove-S3LifecycleConfiguration'
    'Remove-S3MultipartUpload'
    'Remove-S3Object'
    'Remove-S3ObjectTagSet'
    'Restore-S3Object'
    'Set-S3ACL'
    'Set-S3BucketEncryption'
    'Test-S3Bucket'
    'Update-LMFunctionCode'
    'Write-S3BucketAccelerateConfiguration'
    'Write-S3BucketAnalyticsConfiguration'
    'Write-S3BucketInventoryConfiguration'
    'Write-S3BucketLogging'
    'Write-S3BucketMetricsConfiguration'
    'Write-S3BucketNotification'
    'Write-S3BucketPolicy'
    'Write-S3BucketReplication'
    'Write-S3BucketRequestPayment'
    'Write-S3BucketTagging'
    'Write-S3BucketVersioning'
    'Write-S3BucketWebsite'
    'Write-S3CORSConfiguration'
    'Write-S3LifecycleConfiguration'
    'Write-S3Object'
    'Write-S3ObjectTagSet'
  )
  ParameterName = 'BucketName'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer