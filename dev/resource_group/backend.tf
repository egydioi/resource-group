terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/rm"
        version = "3.58.0"
    }
  }
}

provider "azurerm" {
    feature {}
    subscription_id = var.subscription
}

