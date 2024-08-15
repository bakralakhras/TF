output "cosmodb_account_id" {
  value = azurerm_cosmosdb_account.this.id
}
output "cosmosdb_primary_master_key" {
  value = azurerm_cosmosdb_account.this.primary_master_key
}

output "cosmosdb_connection_strings" {
  value = element(azurerm_cosmosdb_account.this.connection_strings,0)
}
