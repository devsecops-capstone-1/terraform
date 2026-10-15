output "infrastructure_resource_group_name" {
  description = "Existing resource group for the DevSecOps infrastructure."
  value       = data.azurerm_resource_group.infra.name
}
