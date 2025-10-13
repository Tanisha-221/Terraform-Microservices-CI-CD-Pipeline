variable "acr_name" {
  description = "Name of the Azure Container Registry"
  type        = string
}

variable "acr_sku" {
  description = "SKU for the ACR"
  type        = string
}

variable "acr_admin_enabled" {
  description = "Enable admin user for ACR"
  type        = bool
  default     = true
}
