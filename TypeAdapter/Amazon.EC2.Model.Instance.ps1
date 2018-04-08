<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$TypeName = 'Amazon.EC2.Model.Instance'

@(
  # Adds a Region property to all Amazon EC2 instance objects.
  # The region is simply parsed from the automatically-assigned, internal DNS name of the EC2 instance.
  @{
    Force = $true
    TypeName = $TypeName
    MemberType = 'ScriptProperty'
    MemberName = 'Region'
    Value = {
      $Region = $this.PrivateDnsName.Split('.')[1]
      if ($Region -eq 'ec2') {
        return 'us-east-1'
      }
      return 
    }
  }
  # Provides a mechanism to map SSH keys on the local filesystem to EC2 instances, depending on the AWS Region 
  # they're deployed in, and the 
  # The .awskeys.json file looks like this: { "us-west-2": { "MyCustomKeyName": "~/path/to/key.pem" }, "us-east-2": { ..... } }
  @{
    Force = $true
    TypeName = $TypeName
    MemberType = 'ScriptProperty'
    MemberName = 'KeyFile'
    Value = {
      $KeyFileMap = Get-Content -Raw -Path $HOME/.awskeys.json | ConvertFrom-Json
      $KeyFileMap.$($this.Region).$($this.KeyName)
    }
  }

  # Creates a PowerShell Remoting Session, tied to the EC2 instance. If a PSSession doesn't already exist for this instance,
  # then it will create one, otherwise it will return the existing PSSession.
  @{
    Force = $true
    TypeName = $TypeName
    MemberType = 'ScriptProperty'
    MemberName = 'RemoteSession'
    Value = {
      $Session = Get-PSSession -Name $this.InstanceId -ErrorAction Ignore
      if ($Session) {
        return $Session
      }
      else {
        return New-PSSession -SSHTransport -Name $this.InstanceId -Port 22 -HostName $this.PublicIPAddress -UserName Administrator -KeyFilePath $this.KeyFile
      }
    }
  }

  # Adds a Password property to all Amazon EC2 instance objects. Simplifies retrieving Windows Administrator credentials for
  # Remote Desktop and/or PowerShell Remoting (Windows --> Windows)
  @{
    Force = $true
    TypeName = $TypeName
    MemberType = 'ScriptProperty'
    MemberName = 'Password'
    Value = {
      return Get-EC2PasswordData -InstanceId $this.InstanceId -Decrypt -PemFile $this.KeyFile
    }
  }

  # Adds a Credential property to all Amazon EC2 instances, returning a PSCredential object for Windows systems.
  # This is useful to establish password-based PowerShell Remoting sessions from Windows --> Windows.
  @{
    Force = $true
    TypeName = $TypeName
    MemberType = 'ScriptProperty'
    MemberName = 'Credential'
    Value = {
      $Password = ConvertTo-SecureString -AsPlainText -Force -String (Get-EC2PasswordData -InstanceId $this.InstanceId -Decrypt -PemFile $this.KeyFile)
      return [pscredential]::new('Administrator', $Password)
    }
  }

)
