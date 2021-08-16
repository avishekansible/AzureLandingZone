resource "azurerm_monitor_action_group" "mag" {
  name                = var.res_mag_name
  resource_group_name = var.res_mag_rg_name
  short_name          = var.res_mag_short_name
  tags                = var.res_tags

  email_receiver {
    name          = var.res_email_rcvr_name
    email_address = var.res_email_rcvr_address
  }
}