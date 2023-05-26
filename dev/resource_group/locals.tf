locals {
  tags = {
    "application"      = var.application
    "cost_center"      = var.cost_center
    "created_by"       = "terraform"
    "environment_type" = local.environment
    "pci"              = var.pci
    "service"          = var.service
    "lgpd"             = var.lgpd
    "core_business"    = var.core_business
    "lock"             = var.resource_lock
  }
  environments = ["devti", "hml", "pprd", "prd", "shd", "vdi"]
  environment = contains(local.environments,(element(split("/", path.cwd), length(split("/", path.cwd)) - 2))) ? element(split("/", path.cwd), length(split("/", path.cwd)) - 2) : element(split("/", path.cwd), length(split("/", path.cwd)) - 1)
  region      = lower(replace(var.region, "/\\s+/", ""))
  region_prefix = {
    "brazilsouth"    = "brs"
    "southcentralus" = "scu"
  }
}
