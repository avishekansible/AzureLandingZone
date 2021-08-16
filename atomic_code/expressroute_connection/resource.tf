resource "azurerm_virtual_network_gateway" "gw" {
  name                = var.res_gw_name
  location            = var.res_location
  resource_group_name = var.res_rg_name
  tags                = var.res_tags
  type                = var.res_type
  sku                 = var.res_sku

  ip_configuration {
    public_ip_address_id          = var.res_public_ip_address_id
    private_ip_address_allocation = var.res_gw_private_ip_allocation
    subnet_id                     = var.res_subnet_id
  }
}

resource "azurerm_virtual_network_gateway_connection" "gwc" {
  name                       = var.res_gwc_name
  location                   = azurerm_virtual_network_gateway.gw.location
  resource_group_name        = azurerm_virtual_network_gateway.gw.resource_group_name
  type                       = azurerm_virtual_network_gateway.gw.type
  virtual_network_gateway_id = azurerm_virtual_network_gateway.gw.id
  express_route_circuit_id   = var.res_circuit_id
  authorization_key          = var.res_authorization_key
  tags                       = azurerm_virtual_network_gateway.gw.tags
}
