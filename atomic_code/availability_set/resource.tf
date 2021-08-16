# Resource: Availability Set
resource "azurerm_availability_set" "av_set" {
  name                        = var.res_avset_name
  location                    = var.res_location
  resource_group_name         = var.res_rg_name
  platform_fault_domain_count = var.res_fault_domain_count
  managed                     = var.res_managed
  tags                        = var.res_tags
}