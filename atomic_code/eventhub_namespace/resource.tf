resource "azurerm_eventhub_namespace" "eh_ns" {
  name                = var.res_eh_namespace_name
  location            = var.res_location
  resource_group_name = var.res_eh_rg_name
  sku                 = var.res_eh_ns_sku
  capacity            = var.res_eh_ns_capacity
  tags                = var.res_tags
}