resource "azurerm_recovery_services_vault" "vault" {
  name                = var.res_bkup_vault_name
  location            = var.res_location
  resource_group_name = var.res_bkup_vault_rg_name
  sku                 = var.res_bkup_vault_sku_name
  tags                = var.res_tags
}