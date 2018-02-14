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
      return $this.PrivateDnsName.Split('.')[1]
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
