terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.0"
    }
  }
}

resource "azurerm_container_registry" "this" {
  #checkov:skip=CKV_AZURE_139:Public access required so GitHub-hosted runners can push images. Private networking needs Premium SKU plus self-hosted runners, out of scope for this capstone. Compensating controls: admin account disabled, anonymous pull disabled, Entra ID RBAC only.

  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku

  # The shared admin account is never used. CI and AKS authenticate with Entra ID identities and RBAC.
  admin_enabled = false

  tags = var.tags
}
