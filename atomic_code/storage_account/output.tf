output "res_out_sa_id" {
  value = azurerm_storage_account.sa.id
}

output "res_out_sa_name" {
  value = azurerm_storage_account.sa.name
}

output "res_out_blob_endpoint" {
  value = azurerm_storage_account.sa.primary_blob_endpoint
}