resource "azurerm_automation_runbook" "aar" {
  name                = var.res_aar_name
  location            = var.res_location
  resource_group_name = var.res_aar_rg_name
  account_name        = var.res_aa_name
  log_verbose         = var.res_aar_log_verbose
  log_progress        = var.res_aar_log_progress
  description         = var.res_aar_description
  runbook_type        = var.res_aar_runbook_type

  publish_content_link {
    uri = var.res_aar_uri
  }
}