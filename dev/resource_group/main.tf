module "rg-net" {
  source = "git@github.com:egydioi/resource-group.git"

  name          = "net"
  region        = "South Central US"
  service       = "network"
  core_business = "network"
  application   = "ti"
  pci           = "default"
  cost_center   = 305
  resource_lock = "cannotdelete"
}