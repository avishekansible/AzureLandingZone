output "res_out_nsg_id" {
  value = {
    for nsg in azurerm_network_security_group.nsg:
    nsg.name => nsg.id
  }
}
