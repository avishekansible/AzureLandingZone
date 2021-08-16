resource "azurerm_network_interface" "nic" {
  name                = var.res_nic_name
  location            = var.res_location
  resource_group_name = var.res_rg_name
  tags                = var.res_tags

  dynamic "ip_configuration" {
    for_each = var.res_nic_ip_configs
    content {
      name                          = ip_configuration.value.name
      subnet_id                     = ip_configuration.value.subnet_id
      private_ip_address            = ip_configuration.value.private_ip_address
      private_ip_address_allocation = ip_configuration.value.private_ip_address_allocation
      public_ip_address_id          = ip_configuration.value.public_ip_address_id
      primary                       = ip_configuration.value.primary
    }
  }
}
