# Overview

The Amazon Web Services (AWS) Extensions for AWS Tools for PowerShell provide a user-friendly interface on top of the core AWS Tools for PowerShell experience.

# Features

* Intellisense / auto-completion for parameter values

| Service           | Parameter               |
|-------------------|-------------------------|
| EC2               | InstanceId              |
| EBS               | VolumeId                |
| VPC               | VpcId                   |
| ECS               | ClusterName             |
| CloudFormation    | StackName               |
| Lambda            | FunctionName            |
| IAM               | GroupName               |
| IAM               | PolicyName              |
| IAM               | UserName                |
| IAM               | RoleName                |
| IAM               | RoleArn                 |
| AutoScaling       | LaunchConfigurationName |
| AutoScaling       | AutoScalingGroupName    |
| CloudWatch        | Namespace               |

## Type Adapters

The PowerShell environment provides the ability to modify objects by binding custom properties and methods to them.
This is known as the PowerShell Adaptive Type System (ATS). The Add-Member command can be used to add new properties and methods
to individual objects. However, if you want to bind a custom property or method to **all** objects that share a 
common type, then you can use the `Update-TypeData` command to achieve this.

The `Update-TypeData` command allows you to specify an XML document (`*.types.ps1xml`) containing the pre-defined type adaptations,
or you can simply specify the new members in-line with the command.

# License

Apache 2.0, see `LICENSE.txt`.
