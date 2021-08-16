resource "azurerm_network_interface" "nic" {
  name                = var.res_nic_name
  location            = var.res_location
  resource_group_name = var.res_rg_name
  tags                = var.res_tags

  ip_configuration {
    name                          = var.res_nic_ip_config_name
    primary                       = var.res_primary_nic
    subnet_id                     = var.res_subnet_id
    private_ip_address_allocation = var.res_nic_address_allocation
    public_ip_address_id          = var.res_pip_id
  }
}