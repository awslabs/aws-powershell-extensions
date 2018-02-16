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
| CloudWatch        | Namespace               |
| CloudWatch        | LogGroupName            |
| CloudWatch        | LogStreamName           |
| CodeCommit        | RepositoryName          |
| EC2               | VolumeId                |
| EC2               | InstanceId              |
| ECS               | ClusterName             |
| ECS               | TaskDefinition          |
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
| Systems Manager   | DocumentName            |
| S3                | ParameterName           |
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

# License

Apache 2.0, see `LICENSE.txt`.
