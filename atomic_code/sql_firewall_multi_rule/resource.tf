resource "azurerm_sql_firewall_rule" "fw" {
  for_each            = var.res_allowed_cidrs
  name                = each.key
  resource_group_name = var.res_rg_name
  server_name         = var.res_sql_server
  start_ip_address    = cidrhost(each.value, 0)
  end_ip_address      = cidrhost(each.value, -1)
}

resource "azurerm_sql_virtual_network_rule" "fw" {
  for_each            = var.res_allowed_subnets
  name                = each.key
  resource_group_name = var.res_rg_name
  server_name         = var.res_sql_server
  subnet_id           = each.value
}
