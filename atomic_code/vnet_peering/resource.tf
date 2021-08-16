resource "azurerm_virtual_network_peering" "peer" {
  name                         = var.res_vnet_peer_name
  provider                     = azurerm.provider
  resource_group_name          = var.res_vnet_rg_name
  virtual_network_name         = var.res_vnet_name
  remote_virtual_network_id    = var.res_remote_vnet_id
  use_remote_gateways          = var.res_use_remote_gw
  allow_virtual_network_access = var.res_allow_vnet_access
  allow_forwarded_traffic      = var.res_allow_fw_traffic
  allow_gateway_transit        = var.res_allow_gw_transit
}
