# Outputs: vNet
output "res_out_vnet_name" {
  value = "${azurerm_virtual_network.vnet.name}"
}

output "res_out_vnet_id" {
  value = "${azurerm_virtual_network.vnet.id}"
}
