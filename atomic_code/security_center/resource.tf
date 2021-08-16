resource "azurerm_security_center_workspace" "sc" {
  scope        = var.subscription_id
  workspace_id = var.res_la_workspace_id
}

resource "azurerm_security_center_subscription_pricing" "sec_pricing" {
  tier = "Standard"
}