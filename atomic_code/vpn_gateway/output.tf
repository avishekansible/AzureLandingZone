# Outputs: VPN Gateway
output "res_out_vng_id" {
  value = azurerm_virtual_network_gateway.vng.id
}

output "res_out_vpn_gw_conn_id" {
  value = azurerm_virtual_network_gateway_connection.connect.id
}