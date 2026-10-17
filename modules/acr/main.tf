terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.0"
    }
  }
}

resource "azurerm_container_registry" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku

  # The shared admin account is never used. CI and AKS authenticate with Entra ID identities and RBAC.
  admin_enabled = false

  tags = var.tags
}
