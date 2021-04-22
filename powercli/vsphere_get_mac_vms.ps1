# Imports
. $PSScriptRoot\utils.ps1

# Variables
$server="192.168.0.32"
$user="terraform"
$pass = "admin@123456"

# Connect in  Server
Connect -server $server -user $user -pass $pass >$null


# Get VM
# $vm=(Get-VM -Name *ora*).Name

# Get Macs
# Get-MacAddress -vmName $vm