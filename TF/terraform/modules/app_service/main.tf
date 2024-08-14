resource "azurerm_app_service" "this" {
  name                = var.name
  location= var.resource_group_location
  resource_group_name = var.resource_group_name
  app_service_plan_id = var.app_service_plan_id
}