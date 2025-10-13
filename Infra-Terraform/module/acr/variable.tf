variable "acr_resource_group_name" {
  description = "The name of the resource group where the ACR will be created."
  type        = string
  
}

variable "acr_name" {
  description = "The name of the Azure Container Registry."
  type        = string

}

variable "acr_location" {
  description = "The location where the ACR will be created."
  type        = string

}

variable "acr_admin_enabled" {
  description = "Whether to enable the admin user for the Azure Container Registry."
  type        = bool
  default     = true
}