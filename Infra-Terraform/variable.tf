variable "acr_name" {
  description = "Name of the Azure Container Registry"
  type        = string
  default     = "myacr13579"
}

variable "acr_sku" {
  description = "SKU for the ACR"
  type        = string
  default     = "Standard"
}

variable "acr_admin_enabled" {
  description = "Enable admin user for ACR"
  type        = bool
  default     = true
}
