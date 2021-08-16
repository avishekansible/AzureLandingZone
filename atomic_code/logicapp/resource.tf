resource "azurerm_logic_app_workflow" "la" {
  name                = var.res_la_name
  location            = var.res_location
  resource_group_name = var.res_la_rg_name
}