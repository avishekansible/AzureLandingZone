resource "azurerm_sql_server" "svr" {
  name                         = var.res_name
  resource_group_name          = var.res_rg_name
  location                     = var.res_location
  version                      = var.res_version
  administrator_login          = var.res_login
  administrator_login_password = var.res_password
  tags                         = var.res_tags
}