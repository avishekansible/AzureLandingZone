resource "azurerm_automation_account" "aa" {
  name                = var.res_aa_name
  location            = var.res_location
  resource_group_name = var.res_rg_name
  sku_name            = var.res_aa_sku_name
  tags                = var.res_tags
}