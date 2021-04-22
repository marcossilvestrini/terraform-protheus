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
    #>
    Param
    (

        [Parameter(Mandatory = $true)]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        $server,
        [Parameter(Mandatory = $true)]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        $user,
        [Parameter(Mandatory = $true)]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        $pass
    )
    # conn in server and save credentials for use
    Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false
    Connect-VIServer $server -User $user -Password $pass  -WarningAction:SilentlyContinue

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