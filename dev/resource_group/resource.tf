resource "azurerm_resource_group" "rg" {
    name     = "rg-${local.environment}-${lookup(local.region_prefix, local.region)}-${var.name}-${format("%02s", var.number)}"
    location = var.region
    tags     = merge(var.tags, local.tags)
}
