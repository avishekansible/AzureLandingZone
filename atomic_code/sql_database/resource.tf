resource "azurerm_sql_database" "db" {
  name                             = var.res_name
  resource_group_name              = var.res_rg_name
  location                         = var.res_location
  server_name                      = var.res_sql_server
  edition                          = var.res_edition
  requested_service_objective_name = var.res_service_objective_name
  collation                        = var.res_collation
  tags                             = var.res_tags
}
