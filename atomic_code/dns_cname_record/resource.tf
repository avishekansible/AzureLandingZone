resource "azurerm_dns_cname_record" "rec" {
  name                = var.res_record_name
  resource_group_name = var.res_rg_name
  zone_name           = var.res_zone_name
  ttl                 = var.res_ttl
  record              = var.res_record
  tags                = var.res_tags
}
