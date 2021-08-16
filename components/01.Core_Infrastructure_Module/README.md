# Introduction 
This module creates the following resources on Azure -  Resource Group and a Private DNS Zone

# Dependent Resources
- [Resource Group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group)
- [Private DNS Zone](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone)

---
# Module inputs and arguments to resources
These are the inputs within this module
| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| rg_name | Name of Resource Group where DNS Zone is to be created | string | Yes |
| zone_name | Name of DNS Zone which will be created | string | Yes |
| tags | Tag Details | map | Yes |
| location | Location Details | string | Yes|

---
# Outputs
| Output | Description | Type | Sensitive |
| --------- |:---------| :----------|:---------:|
| mod_out_rg_name | Name of the Resource Group | string | No |
| mod_out_rg_id | The ID of the Resource Group | string | No |
| mod_out_zone_id | The ID of the DNS Zone | string | No |

---
# Sample Usage
#### Terraform Module
```js
module "resource_group" {
    source       = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//resource_group"
    res_rg_name  = var.rg_name
    res_location = var.location
    res_tags     = var.tags
}
```

```js
module "dns_zone" {
    source        = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//dns_zone"
    res_rg_name   = module.resource_group.res_out_rg_name
    res_zone_name = var.zone_name
    res_tags      = var.tags
}
```