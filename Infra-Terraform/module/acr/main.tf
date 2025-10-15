resource "azurerm_container_registry" "acr" {
  name                     = var.acr_name
  resource_group_name       = var.acr_resource_group_name
  location                 = var.acr_location
  sku                       = "Standard"
  admin_enabled             = var.acr_admin_enabled
}

output "name" {
  description = "The name of the Azure Container Registry"
  value       = azurerm_container_registry.acr.name
}

output "login_server" {
  description = "The login server URL for the ACR"
  value       = azurerm_container_registry.acr.login_server
}

output "username" {
  description = "The admin username for the ACR"
  value       = azurerm_container_registry.acr.admin_username
}

output "password" {
  description = "The admin password for the ACR"
  value       = azurerm_container_registry.acr.admin_password
}