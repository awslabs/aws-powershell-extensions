@{
    # If authoring a script module, the RootModule is the name of your .psm1 file
    RootModule = 'AWSPowerShell.Extensions.psm1'

    Author = 'Trevor Sullivan <tsulli@amazon.com>'

    CompanyName = 'Amazon Inc.'

    ModuleVersion = '0.2'

    # Use the New-Guid command to generate a GUID, and copy/paste into the next line
    GUID = '715d80b5-5a63-4410-ae2e-1c9e1399f915'

    Copyright = '2017 Amazon Inc.'

    Description = 'Provides value-add extensions on top of AWS PowerShell module. Includes Intellisense / tab-completion, PowerShell Format Types files, and new functions.'

    # Minimum PowerShell version supported by this module (optional, recommended)
    # PowerShellVersion = ''

    # Which PowerShell Editions does this module work with? (Core, Desktop)
    CompatiblePSEditions = @('Desktop', 'Core')

    # Which PowerShell functions are exported from your module? (eg. Get-CoolObject)
    FunctionsToExport = @('')

    # Which PowerShell aliases are exported from your module? (eg. gco)
    AliasesToExport = @('')

    # Which PowerShell variables are exported from your module? (eg. Fruits, Vegetables)
    VariablesToExport = @('')

    # PowerShell Gallery: Define your module's metadata
    PrivateData = @{
        PSData = @{
            # What keywords represent your PowerShell module? (eg. cloud, tools, framework, vendor)
            Tags = @('Amazon Web Services', 'cloud')

            # What software license is your code being released under? (see https://opensource.org/licenses)
            LicenseUri = ''

            # What is the URL to your project's website?
            ProjectUri = ''

            # What is the URI to a custom icon file for your project? (optional)
            IconUri = ''

            # What new features, bug fixes, or deprecated features, are part of this release?
            ReleaseNotes = @'
'@
        }
    }

    # If your module supports updateable help, what is the URI to the help archive? (optional)
    # HelpInfoURI = ''
}