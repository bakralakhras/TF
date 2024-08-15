resource "azurerm_app_service_plan" "this" {
  name                = "bkr001-app-service-plan"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  sku {
    tier = "Standard"
    size = "S1"
  }
}