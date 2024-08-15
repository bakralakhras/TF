resource "azurerm_virtual_network" "this" {
  name                = var.name
  address_space       = ["10.0.0.0/16"]
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
}
