# fetch the resource group
data "azurerm_resource_group" "infra" {
  name = "rg-devsecops-infra"
}
