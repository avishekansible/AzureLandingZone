module "resource_group" {
  source       = "git::https://HPE-MVC@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//resource_group"
  res_rg_name  = var.rg_name
  res_location = var.location
  res_tags     = var.tags
}

module "dns_zone" {
  source        = "git::https://HPE-MVC@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//dns_zone"
  res_zone_name = var.zone_name
  res_tags      = var.tags
  res_rg_name   = module.resource_group.res_out_rg_name
}
