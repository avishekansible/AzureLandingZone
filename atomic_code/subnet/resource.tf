# Resource: Subnet
resource "azurerm_subnet" "subnet" {
  count                = length(var.res_subnets_info)
  name                 = (var.res_subnets_info[count.index]).0
  resource_group_name  = var.res_vnet_rg_name
  virtual_network_name = var.res_vnet_name
  address_prefix       = (var.res_subnets_info[count.index]).1
  service_endpoints    = var.res_serv_endp
}
