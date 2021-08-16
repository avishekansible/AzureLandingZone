output "res_out_fw_id" {
  value = azurerm_firewall.fw.id
}

output "res_out_fw_name" {
  value = azurerm_firewall.fw.name
}

output "res_out_fw_int_ip" {
  value = azurerm_firewall.fw.ip_configuration[0].private_ip_address
}