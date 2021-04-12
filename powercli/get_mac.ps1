# Imports
. $PSScriptRoot\utils.ps1

# Connect in  Server
Connect >$null

# Get VM
$vm=(Get-VM -Name *ora*).Name

# Get Macs
Get-MacAddress -vmName $vm