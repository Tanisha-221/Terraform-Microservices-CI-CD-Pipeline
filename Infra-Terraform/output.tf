output "acr_name" {
  description = "The name of the Azure Container Registry"
  value       = module.acr.name
}

output "acr_resource_group_name" {
  description = "The resource group name for the ACR"
  value       = azurerm_resource_group.rg.name
}

output "acr_login_server" {
  description = "The login server URL for the Azure Container Registry"
  value       = module.acr.login_server
}

output "acr_username" {
  description = "The admin username for the ACR"
  value       = module.acr.username
}

output "acr_password" {
  description = "The admin password for the ACR"
  value       = module.acr.password
  sensitive = true
}
