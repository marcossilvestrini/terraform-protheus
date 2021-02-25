# Imports
. $PSScriptRoot\utils.ps1

# Connect in  Server
Connect >$null

# List Vms
# (Get-VM).Name | Format-List -WarningAction:Ignore

# Start VM
# $vm=(Get-VM -Name *ora*).Name
# Start-VM -VM $vm -Confirm -RunAsync
# $vm = (Get-VM -Name *ora*).PowerState
