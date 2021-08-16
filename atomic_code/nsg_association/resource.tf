resource "azurerm_subnet_network_security_group_association" "nsg" {
  count                     = length(var.res_subnet_id)
  subnet_id                 = var.res_subnet_id[count.index]
  network_security_group_id = var.res_nsg_id
}