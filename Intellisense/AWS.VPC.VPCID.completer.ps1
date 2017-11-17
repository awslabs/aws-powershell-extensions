$ScriptBlock = {
  (Get-EC2Vpc).VpcId
}

<#
Get-Command -Module AWSPowerShell.NetCore -ParameterName vpcid |
  ForEach-Object -Process { "'{0}'" -f $PSItem.Name }
#>
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