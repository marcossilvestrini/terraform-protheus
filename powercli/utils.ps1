# Variables
$user = "terraform"
$pass = "admin@123"
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