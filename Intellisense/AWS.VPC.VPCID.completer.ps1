<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$ScriptBlock = {
  [CmdletBinding()]
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  (Get-EC2Vpc).VpcId.Where({ $PSItem -match $wordToComplete })
}

# (Get-Command -Module AWSPowerShell* -ParameterName VpcId).Name -replace '.*', '''$0'
$Completer = @{
  CommandName = @(
    'Add-EC2ClassicLinkVpc'
    'Add-EC2InternetGateway'
    'Add-EC2VpnGateway'
    'Copy-OPSStack'
    'Disable-EC2VpcClassicLink'
    'Disable-EC2VpcClassicLinkDnsSupport'
    'Dismount-EC2ClassicLinkVpc'
    'Dismount-EC2InternetGateway'
    'Dismount-EC2VpnGateway'
    'Edit-EC2VpcAttribute'
    'Edit-EC2VpcTenancy'
    'Enable-EC2VpcClassicLink'
    'Enable-EC2VpcClassicLinkDnsSupport'
    'Get-EC2StaleSecurityGroup'
    'Get-EC2Vpc'
    'Get-EC2VpcAttribute'
    'Get-EC2VpcClassicLink'
    'Get-EC2VpcClassicLinkDnsSupport'
    'New-EC2EgressOnlyInternetGateway'
    'New-EC2NetworkAcl'
    'New-EC2RouteTable'
    'New-EC2SecurityGroup'
    'New-EC2Subnet'
    'New-EC2VpcEndpoint'
    'New-EC2VpcPeeringConnection'
    'New-ELB2TargetGroup'
    'New-OPSStack'
    'Register-EC2DhcpOption'
    'Register-EC2VpcCidrBlock'
    'Remove-EC2Vpc'
  )
  ParameterName = 'VpcId'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer