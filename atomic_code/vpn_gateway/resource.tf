
# Resource: Local Network Gateway (On-Prem)
resource "azurerm_local_network_gateway" "lgn" {
  name                = var.res_lng_name
  location            = var.res_location
  resource_group_name = var.res_vnet_rg_name
  gateway_address     = var.res_remote_gateway_pip
  address_space       = var.res_onprem_address_space

  bgp_settings {
    asn                 = var.res_bgp_asn
    bgp_peering_address = var.res_bgp_peering
  }
}

# Resource: Virtual Network Gateway (Azure VPN Gateway)
resource "azurerm_virtual_network_gateway" "vng" {
  name                = var.res_vng_name
  location            = var.res_location
  resource_group_name = var.res_vnet_rg_name

  type     = "Vpn"
  vpn_type = "RouteBased"

  active_active = false
  enable_bgp    = true
  sku           = "VpnGw1"

  ip_configuration {
    public_ip_address_id          = var.res_pip_id
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = var.res_gw_subnet_id
  }
}

#Resource: Connection resource to on-prem
resource "azurerm_virtual_network_gateway_connection" "connect" {
  name                = "connection"
  location            = var.res_location
  resource_group_name = var.res_vnet_rg_name

  type                       = "IPsec"
  virtual_network_gateway_id = azurerm_virtual_network_gateway.vng.id
  local_network_gateway_id   = azurerm_local_network_gateway.lgn.id
  enable_bgp                 = true

  shared_key = var.res_secret_shared_key
}
