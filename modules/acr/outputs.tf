output "id" {
  description = "Resource ID of the registry (use as the scope for role assignments)."
  value       = azurerm_container_registry.this.id
}

output "name" {
  description = "Registry name (this is the value for the ACR_NAME variable)."
  value       = azurerm_container_registry.this.name
}

output "login_server" {
  description = "Registry login server, e.g. <name>.azurecr.io."
  value       = azurerm_container_registry.this.login_server
}
