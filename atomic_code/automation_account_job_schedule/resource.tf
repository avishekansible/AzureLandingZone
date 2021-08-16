resource "azurerm_automation_job_schedule" "aajs" {
  schedule_name           = var.res_aas_name
  resource_group_name     = var.res_aa_rg_name
  automation_account_name = var.res_aa_name
  runbook_name            = var.res_aar_name
  parameters              = var.res_aajs_map_parameters

}