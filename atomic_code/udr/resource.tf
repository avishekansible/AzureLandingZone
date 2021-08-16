resource "azurerm_route_table" "udr" {
  for_each            = var.res_udr_routes
  name                = each.key
  resource_group_name = var.res_vnet_rg_name
  location            = var.res_location
  dynamic "route" {
    for_each = each.value.routes
    content {
      name                   = route.key
      address_prefix         = route.value.address_prefix
      next_hop_type          = route.value.next_hop_type
      next_hop_in_ip_address = route.value.next_hop_in_ip_address
    }
  }
}