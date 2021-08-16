module "rg" {
  source       = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//resource_group"
  res_rg_name  = var.rg_name
  res_location = var.location
  res_tags     = var.tags
}

module "role_assignment" {
  source        = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//role_assignment"
  res_scope     = module.rg.res_out_rg_id
  res_role_info = var.role_assignment_details
}