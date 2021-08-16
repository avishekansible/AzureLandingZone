resource "azurerm_network_watcher" "nw" {
  name                = var.res_network_watcher_name
  location            = var.res_location
  resource_group_name = var.res_rg_name
}