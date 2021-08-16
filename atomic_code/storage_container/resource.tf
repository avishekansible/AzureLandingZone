resource "azurerm_storage_container" "container" {
  name                  = var.res_container_name
  storage_account_name  = var.res_sa_name
  container_access_type = var.res_access_type
}