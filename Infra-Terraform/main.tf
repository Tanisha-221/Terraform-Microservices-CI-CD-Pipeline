resource "azurerm_resource_group" "rg" {
  name     = "T-microservices-project"
  location = "West Europe"
}

resource "azurerm_service_plan" "asp" {
  name                = "T-app-service-plan"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  os_type             = "Linux"
  sku_name            = "S2"

  lifecycle {
    create_before_destroy = true
  }
}

resource "azurerm_linux_web_app" "awa" {
  name                = "T-node-web-app"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_service_plan.asp.location
  service_plan_id     = azurerm_service_plan.asp.id

  app_settings = {
    "WEBSITES_PORT" = "80"
  }

  site_config {}
}

resource "azurerm_linux_web_app_slot" "awas" {
  name           = "T-node-web-app-slot"
  app_service_id = azurerm_linux_web_app.awa.id

  site_config {}
}

resource "azurerm_web_app_active_slot" "example" {
  slot_id = azurerm_linux_web_app_slot.awas.id
}

module "acr" {
    source = "./module/acr"
    acr_resource_group_name = azurerm_resource_group.rg.name    
    acr_name = var.acr_name
    acr_location = azurerm_resource_group.rg.location
    acr_admin_enabled = var.acr_admin_enabled
}