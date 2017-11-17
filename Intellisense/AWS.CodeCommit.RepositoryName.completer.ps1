# Command names: (Get-Command -ParameterName RepositoryName -Name *cc*).ForEach({ "'{0}'," -f $PSItem.Name})

$ScriptBlock = {
    (Get-CCRepositoryList).RepositoryName
}

<#
Get-AWSCmdletName -Service CodeCommit |
    Where-Object -FilterScript { Get-Command -Name $PSItem.CmdletName -ParameterName RepositoryName -ErrorAction Ignore } |
    ForEach-Object -Process { "'{0}'" -f $PSItem.CmdletName }
#>
$Completer = @{
    CommandName = @(
        'Get-CCBlob',
        'Get-CCBranch',
        'Get-CCBranchList',
        'Get-CCCommit',
        'Get-CCDifferenceList',
        'Get-CCRepository',
        'Get-CCRepositoryBatch',
        'Get-CCRepositoryTrigger',
        'New-CCBranch',
        'New-CCRepository',
        'Remove-CCRepository',
        'Set-CCRepositoryTrigger',
        'Test-CCRepositoryTrigger',
        'Update-CCDefaultBranch',
        'Update-CCRepositoryDescription'
    )
    ParameterName = 'RepositoryName'
    ScriptBlock = $ScriptBlock
}

$Completer = @{
    CommandName = @(
        'Update-CCRepositoryName'
    )
    ParameterName = 'OldName'
    ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer