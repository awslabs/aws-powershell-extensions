# Overview

The Amazon Web Services (AWS) Extensions for AWS Tools for PowerShell provide a user-friendly interface on top of the core AWS Tools for PowerShell experience.

# Features

## Intellisense

One of the predominant features of this PowerShell module is the dynamic Intellisense
that's based on the resources provisioned in your AWS account. Intellisense results
are governed by the IAM credentials profile that is currently active.

| Service           | Parameter               |
|-------------------|-------------------------|
| AutoScaling       | LaunchConfigurationName |
| AutoScaling       | AutoScalingGroupName    |
| CloudFormation    | StackName               |
| CloudWatch        | AlarmName               |
| CloudWatch        | LogGroupName            |
| CloudWatch        | LogStreamName           |
| CloudWatch        | Namespace               |
| CodeCommit        | RepositoryName          |
| EC2               | VolumeId                |
| EC2               | InstanceId              |
| ECS               | ClusterName             |
| ECS               | TaskDefinition          |
| ECR               | RepositoryName          |
| IAM               | GroupName               |
| IAM               | InstanceProfileName     |
| IAM               | InstanceProfileArn      |
| IAM               | GroupName               |
| IAM               | PolicyName              |
| IAM               | RoleName                |
| IAM               | RoleArn                 |
| IAM               | UserName                |
| Lambda            | FunctionName            |
| S3                | BucketName              |
| Systems Manager   | BaselineId              |
| Systems Manager   | DocumentName            |
| Systems Manager   | ParameterName           |
| VPC               | SubnetId                |
| VPC               | VpcId                   |

## Type Adapters

The PowerShell environment provides the ability to modify objects by binding custom properties and methods to them.
The feature providing this capability is known as the PowerShell Adaptive Type System (ATS). The Add-Member command can be used to add new properties and methods
to individual objects. However, if you want to bind a custom property or method to **all** objects that share a common type, then you can use the `Update-TypeData` command.

The `Update-TypeData` command allows you to specify an XML document (`*.types.ps1xml`) containing the pre-defined type adaptations,
or you can simply specify the new members in-line with the command.

This module provides type adaptations for the following resources:

| Service | .NET Type |
|-|-|
| EC2 | Amazon.EC2.Model.Instance |

# Installation

To install this module, simply clone the repository locally, and then import the `.psd1` file.
We are currently looking into publishing this module to the PowerShell Gallery for ease of distribution.

```
git clone https://github.com/awslabs/aws-powershell-extensions
Import-Module -Name ./aws-powershell-extensions/AWSPowerShell.Extensions.psd1
```

# Usage

1. Set your default AWS Region, using the `Set-DefaultAWSRegion` command.
2. Start calling commands in the AWS Tools for PowerShell, as usual.

Intellisense integrates with your typical usage of the AWS PowerShell module.

## Type Adapters

Type Adapters add extra properties and methods to various .NET object types.

### EC2 Instances

To try out the type adapters for EC2 instances, first create an `.awskeys.json` file with the following structure. This creates a mapping between your private key files and EC2 public key pairs, so that you can perform remote commands, via SSH, against your EC2 instances.

**TODO**: Add details about creating PowerShell Remoting sessions with the EC2 instance `RemoteSession` property.

#### Example ~/.awskeys.json
```
{
  "us-west-2": {
    "Trevor": "~/mysshkey.pem"
  }
}
```

Then, try out the following command and examine the new properties that are attached to the EC2 instance objects.

```
(Get-EC2Instance).Instances | Get-Member
```

# License

Apache 2.0, see `LICENSE.txt`.
