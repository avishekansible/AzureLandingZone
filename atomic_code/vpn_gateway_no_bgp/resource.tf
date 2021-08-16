# Resource: Public IP Address (for VPN Gateway)
resource "azurerm_public_ip" "pip" {
  name                = var.res_pip_name
  location            = var.res_location
  resource_group_name = var.res_vnet_rg_name
  allocation_method   = "Dynamic"
}

# Resource: Local Network Gateway (On-Prem)
resource "azurerm_local_network_gateway" "lgn" {
  name                = var.res_lng_name
  location            = var.res_location
  resource_group_name = var.res_vnet_rg_name
  gateway_address     = var.res_remote_gateway_pip
  address_space       = var.res_onprem_address_space
}

# Resource: Virtual Network Gateway (Azure VPN Gateway)
resource "azurerm_virtual_network_gateway" "vng" {
  name                = var.res_vng_name
  location            = var.res_location
  resource_group_name = var.res_vnet_rg_name

  type     = "Vpn"
  vpn_type = var.res_vpn_type

  active_active = false
  enable_bgp    = false
  sku           = var.res_sku

  ip_configuration {
    public_ip_address_id          = azurerm_public_ip.pip.id
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = var.res_gw_subnet_id
  }
}

#Resource: Connection resource to on-prem
resource "azurerm_virtual_network_gateway_connection" "connect" {
  name                = "connection"
  location            = var.res_location
  resource_group_name = var.res_vnet_rg_name

  type                               = "IPsec"
  virtual_network_gateway_id         = azurerm_virtual_network_gateway.vng.id
  local_network_gateway_id           = azurerm_local_network_gateway.lgn.id
  enable_bgp                         = false
  shared_key                         = var.res_secret_shared_key
  connection_protocol                = var.res_connection_protocol
  use_policy_based_traffic_selectors = var.res_use_policy_based_traffic_selectors

  dynamic "ipsec_policy" {
    for_each = var.res_ipsec_policy
    content {
      dh_group         = ipsec_policy.value.dh_group
      ike_encryption   = ipsec_policy.value.ike_encryption
      ike_integrity    = ipsec_policy.value.ike_integrity
      ipsec_encryption = ipsec_policy.value.ipsec_encryption
      ipsec_integrity  = ipsec_policy.value.ipsec_integrity
      pfs_group        = ipsec_policy.value.pfs_group
      sa_datasize      = ipsec_policy.value.sa_datasize
      sa_lifetime      = ipsec_policy.value.sa_lifetime
    }
  }
}
