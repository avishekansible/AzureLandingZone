resource "azurerm_firewall" "fw" {
  name                = var.res_fw_name
  location            = var.res_location
  resource_group_name = var.res_fw_rg_name
  tags                = var.res_tags

  ip_configuration {
    name                 = var.res_pip_name
    subnet_id            = var.res_fw_subnet_id
    public_ip_address_id = var.res_fw_pip_id
  }
}