# Resource: Route Table
resource "azurerm_route_table" "rt" {
  name                = var.res_rt_name
  location            = var.res_location
  resource_group_name = var.res_vnet_rg_name
  tags                = var.res_tags
}