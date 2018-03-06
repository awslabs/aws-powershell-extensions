<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$TypeName = 'Amazon.S3.Model.S3Bucket'

@(
  # Adds a Region property to all Amazon EC2 instance objects.
  # The region is simply parsed from the automatically-assigned, internal DNS name of the EC2 instance.
  @{
    Force = $true
    TypeName = $TypeName
    MemberType = 'ScriptProperty'
    MemberName = 'Region'
    Value = {
      $Region = (Get-S3BucketLocation -BucketName $this.BucketName).Value
      if ($Region) {
        return $Region
      }
      else {
        return 'us-east-1'
      }
    }
  }
)