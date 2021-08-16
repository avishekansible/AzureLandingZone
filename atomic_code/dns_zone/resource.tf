resource "azurerm_private_dns_zone" "zone" {
  name                = var.res_zone_name
  resource_group_name = var.res_rg_name
  tags                = var.res_tags
}
