output "res_out_nic_id" {
  value = azurerm_network_interface.nic.id
}

output "res_out_nic_name" {
  value = azurerm_network_interface.nic.name
}

output "res_out_nic_private_ip" {
  value = azurerm_network_interface.nic.private_ip_address
}
