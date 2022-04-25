#
# Module manifest for module 'posh-cd'
#

@{

RootModule = 'posh-cd.psm1'
ModuleVersion = '0.0.2'
GUID = 'cecff5d4-50d6-4ff9-ba22-e8b083276d8c'
Author = 'amorphobia'
Description = 'A bash style "cd" to replace Set-Location'
PowerShellVersion = '5.0'

FunctionsToExport = @('Set-Directory')
CmdletsToExport = @()
VariablesToExport = '*'
AliasesToExport = @('cd')

PrivateData = @{

    PSData = @{

        Tags = @('bash', 'cd')
        LicenseUri = 'https://github.com/amorphobia/posh-cd/blob/master/LICENSE'

    }

}

}

