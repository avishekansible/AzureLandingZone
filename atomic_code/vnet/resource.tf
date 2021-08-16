# Resource: vNet
resource "azurerm_virtual_network" "vnet" {
  name                = var.res_vnet_name
  location            = var.res_location
  resource_group_name = var.res_vnet_rg_name
  address_space       = var.res_vnet_address_prefix
  dns_servers         = var.res_vnet_dns_servers
  tags                = var.res_tags
}
