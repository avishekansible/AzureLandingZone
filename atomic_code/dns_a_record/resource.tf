resource "azurerm_dns_a_record" "rec" {
  name                = var.res_record_name
  resource_group_name = var.res_rg_name
  zone_name           = var.res_zone_name
  ttl                 = var.res_ttl
  records             = var.res_records
  tags                = var.res_tags
}
