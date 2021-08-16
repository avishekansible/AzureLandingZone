module "rg" {
  source       = "git::https://HPE-MVC@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//resource_group"
  res_rg_name  = var.rg_name
  res_location = var.location
  res_tags     = var.tags
}

module "la" {
  source            = "git::https://HPE-MVC@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//log_analytics"
  res_omsla_name    = var.omsla_name
  res_location      = var.location
  res_omsla_rg_name = module.rg.res_out_rg_name
  res_omsla_sku     = var.omsla_sku
}

module "diag" {
  source            = "git::https://HPE-MVC@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//monitor_diagnostic"
  res_mon_res_id    = var.mon_res_id
  res_mon_diag_name = var.mon_diag_name
  res_mon_la_ws_id  = module.la.res_out_la_workspace_id
}
