provider "vsphere" {
  vsphere_server = "192.168.0.32"
  user = "terraform"
  password = "admin@123456"
  allow_unverified_ssl = true
  version = "1.15.0"
}