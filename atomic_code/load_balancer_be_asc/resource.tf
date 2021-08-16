resource "azurerm_network_interface_backend_address_pool_association" "be-ilb" {
  count                   = length(var.res_nic_ids)
  network_interface_id    = element(var.res_nic_ids, count.index)
  ip_configuration_name   = var.res_ip_config
  backend_address_pool_id = var.res_ilb_be_id
}