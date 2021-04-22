# Imports
. $PSScriptRoot\utils.ps1

# Variables
$server = "192.168.0.32"
$user = "terraform"
$pass = "admin@123456"

# Connect in  Server
Connect -server $server -user $user -pass $pass >$null

# List Vms
(Get-VM).Name | Format-List -WarningAction:Ignore

# Start VM
$vm=(Get-VM -Name *ora*).Name
Start-VM -VM $vm -Confirm:$false -RunAsync
$vm = (Get-VM -Name *ora*).PowerState
