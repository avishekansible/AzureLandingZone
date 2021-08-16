resource "azurerm_sql_firewall_rule" "fw" {
  name                = var.res_name
  resource_group_name = var.res_rg_name
  server_name         = var.res_sql_server
  start_ip_address    = var.res_start_ip_address
  end_ip_address      = var.res_end_ip_address
}
