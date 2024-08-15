resource "azurerm_cosmosdb_account" "this" {
  name                = var.name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  offer_type          = "Standard"
  kind                = "MongoDB"
  consistency_policy {
    consistency_level = "Session"
  }
  capabilities {
    name = "EnableMongo"
  }
  geo_location {
    location          = var.resource_group_location
    failover_priority = 0
  }
  tags = {
    environment = "storage"
  }
}


resource "azurerm_private_endpoint" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  subnet_id           = var.subnet_id
  private_service_connection {
    name                           = "bakr-priv-conn"
    private_connection_resource_id = azurerm_cosmosdb_account.this.id
    subresource_names              = ["cosmosdb"]
    is_manual_connection           = false
  }
}