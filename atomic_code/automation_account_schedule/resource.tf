resource "azurerm_automation_schedule" "aas" {
  name                    = var.res_aas_name
  resource_group_name     = var.res_aas_rg_name
  automation_account_name = var.res_aa_name
  frequency               = var.res_aas_frequency
  interval                = var.res_aas_interval
  timezone                = var.res_aas_timezone
  description             = var.res_aas_description
}
