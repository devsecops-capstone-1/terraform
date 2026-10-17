output "infrastructure_resource_group_name" {
  description = "Existing resource group for the DevSecOps infrastructure."
  value       = data.azurerm_resource_group.infra.name
}

output "acr_name" {
  value = module.acr.name
}

output "acr_login_server" {
  value = module.acr.login_server
}

output "acr_id" {
  value = module.acr.id
}
