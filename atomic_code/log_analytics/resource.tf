resource "azurerm_log_analytics_workspace" "la" {
  name                = var.res_omsla_name
  location            = var.res_location
  resource_group_name = var.res_omsla_rg_name
  sku                 = var.res_omsla_sku

}

// retention_in_days   = var.res_omsla_retention