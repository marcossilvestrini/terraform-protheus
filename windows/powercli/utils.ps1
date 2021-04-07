# Variables
$user = "terraform"
$pass = "admin@123456"
$server = "192.168.0.32"

# Functions
Function Connect {
    <#
    .SYNOPSIS
    Function for connect

    .DESCRIPTION
    Connect in Vsphere server

    .EXAMPLE
    Connect

    .NOTES
    Save credential for user others connections
    #>
    # conn in server and save credentials for use
    Connect-VIServer $server -User $user -Password $pass -SaveCredentials -WarningAction:SilentlyContinue

}

Function Get-MacAddress {
    <#
    .SYNOPSIS
    Find mac address

    .DESCRIPTION
    Function for find mac address

    .EXAMPLE
    Get-Mac -vmName $vmName

    .NOTES
    Return all mac adapters
    #>

    Param
    (
        # Param1 help description
        [Parameter(Mandatory = $true,ParameterSetName = 'Input VM Name')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        $vmName
    )
    Write-Host $vmName
    Get-VM $vmName | Get-NetworkAdapter  # | select -ExpandProperty MacAddress
}