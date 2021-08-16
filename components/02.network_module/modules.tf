module "vnet" {
  source                  = "git::https://HPE-MVC@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//vnet"
 # source                  = "HPE-MVC/atomic-code/vnet"
  res_vnet_name           = var.vnet_name
  res_location            = var.location
  res_vnet_rg_name        = data.azurerm_storage_account.sa.resource_group_name
  res_vnet_address_prefix = var.vnet_address_prefix
  res_vnet_dns_servers    = var.vnet_dns_servers
  res_tags                = var.tags
}

module "subnet" {
  source           = "git::https://HPE-MVC@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//subnet"
  res_subnets_info = var.subnets_info
  res_vnet_rg_name = data.azurerm_storage_account.sa.resource_group_name
  res_vnet_name    = module.vnet.res_out_vnet_name
  res_serv_endp =  var.serv_endp
}

module "nsg" {
  source           = "git::https://HPE-MVC@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//nsg"
 # source                  = "HPE-MVC/atomic-code/nsg"
  res_location     = var.location
  res_vnet_rg_name = data.azurerm_storage_account.sa.resource_group_name
  res_tags         = var.tags
  nsg_info         = var.nsg
}

module "udr" {
  source           = "git::https://HPE-MVC@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//udr"
 # source                  = "HPE-MVC/atomic-code/udr"
  res_vnet_rg_name = data.azurerm_storage_account.sa.resource_group_name
  res_location     = var.location
  res_udr_routes   = var.udr
}