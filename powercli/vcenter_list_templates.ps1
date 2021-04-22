# Imports
. $PSScriptRoot\utils.ps1

# Variables
<#
url: https://192.168.0.31
user: root
pass: admin@123456
#>
$server = "192.168.0.31"
$user = "192.168.0.31\Administrator"
$pass = "@dm!N@123456"

# Connect in  Server
Connect -server $server -user $user -pass $pass >$null

Get-Template | Select Name, @{N = "Host"; E = { (Get-VMhost -id $_.HostID).Name}}