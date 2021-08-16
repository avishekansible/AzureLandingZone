# Introduction 
This module creates a vnet and subnet. 
# Resource
- [vnet](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/virtual_network)
- [subnet](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/subnet)
- [nsg](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/network_security_group)
- [udr](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/route_table)
---
# Resource inputs and arguments to modules
These are the inputs within this module
| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| vnet_dns_servers | Name of DNS Zone which will be created | string | Yes |
| vnet_address_prefix | Prefix of the vnet address | map | Yes |
| location | Location details | string | Yes|
| vnet_name | Name of vnet | string | Yes |
| tags | Tags | map | Yes |
| subnets_info | information regarding subnet | map | Yes |
| nsg | The NSGs to be created | map(object({nsgs = map(map(string))})) | Yes |
| udr | The UDRs to be created | map(object({routes = map(map(string))})) | Yes |
---
# Outputs
| Output | Description | Type | Sensitive |
| --------- |:---------| :----------|:---------:|
| mod_out_vnet_name | vnet name | string | No |
| mod_out_vnet_id | The ID of the vnet | string | No |
| mod_out_subnets_names | name of the subnet | string | No |
| mod_out_subnets_ids | id of the subnet | string | No |
| mod_out_subnets_info | subnet information | string | No |
| mod_out_subnets_address_ranges | range of the subnet | string | No |
| mod_out_nsg_ids | IDs for the created NSGs | string | No |
| mod_out_udr_ids | IDs for the created UDRs | string | No |

# Dependencies
| Name | Description
| --------- |:---------|
| Resource Group | A resource group needs to be created prior to creation of vnet and subnet |
---
# Sample Usage
#### Terraform Module
```js
module "vnet" {
  source                  = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//vnet"
  res_vnet_name           = var.vnet_name
  res_location            = var.location
  res_vnet_rg_name        = var.vnet_rg_name
  res_vnet_address_prefix = var.vnet_address_prefix
  res_vnet_dns_servers    = var.vnet_dns_servers
  res_tags                = var.tags
}
```
```js
module "subnet" {
  source           = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//subnet"
  res_subnets_info = var.subnets_info
  res_vnet_rg_name = var.vnet_rg_name
  res_vnet_name    = module.vnet.res_out_vnet_name
}
```
```js
module "nsg" {
  source           = "git::https://dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//nsg"
  res_location     = var.location
  res_vnet_rg_name = var.vnet_rg_name
  res_tags         = var.tags
  nsg_info         = var.nsg
}
```
```js
module "udr" {
  source           = "git::https://dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//udr"
  res_vnet_rg_name = var.vnet_rg_name
  res_location     = var.location
  res_udr_routes   = var.udr
}
```