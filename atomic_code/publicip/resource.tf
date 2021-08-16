resource "azurerm_public_ip" "pip" {
  name                = var.res_pip_name
  location            = var.res_location
  resource_group_name = var.res_pip_rg_name
  sku                 = var.res_pip_sku
  allocation_method   = var.res_pip_allocation_method
  tags                = var.res_tags
}