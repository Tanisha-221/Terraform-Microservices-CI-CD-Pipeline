output "acr_name" {
  description = "The name of the Azure Container Registry"
  value       = module.acr.name
}

output "acr_resource_group_name" {
  description = "The resource group name for the ACR"
  value       = module.acr.resource_group_name
}