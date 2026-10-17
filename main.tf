data "azurerm_resource_group" "infra" {
  name = "rg-devsecops-infra"
}

module "acr" {
  source = "./modules/acr"

  name                = var.acr_name
  resource_group_name = data.azurerm_resource_group.infra.name
  location            = data.azurerm_resource_group.infra.location
  sku                 = var.acr_sku
  tags                = var.tags
}
