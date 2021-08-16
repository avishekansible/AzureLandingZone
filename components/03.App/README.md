# Introduction 
This module creates the following resources on Azure - Resource Group and Role Assignment

# Dependent Resources
- [Resource Group](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/resource_group)
- [Role Assignment](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/role_assignment)

---
# Module inputs and arguments to resources
These are the inputs within this module
| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| rg_name | Name of the Resource Group to be created | string | Yes |
| location | Name of Azure region location for the Resource group | string | Yes |
| tags | Resource Group Tags | map | Yes |
| role_assignment_details | Paramters required to create Role assignment - role_definition_type, role_definition and principal_id | list | Yes|

---
# Outputs
| Output | Description | Sensitive |
| --------- |:---------| :---------:|
| mod_out_rg_name | Name of the Resource Group | No |
| mod_out_rg_id | The ID of the Resource Group | No |
| mod_out_role_id | The ID of the Role Assignment | No |

---
# Sample Usage
#### Terraform Module
```js
module "rg" {
    source       = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//resource_group"
    res_rg_name  = "mvcrg"
    res_location = "eastUS" 
    res_tags     = {Environment = "dev"}
}
```
```js
module "role_assignment" {
  source        = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//role_assignment"
  res_scope     = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx/resourceGroups/mvcrg"
  res_role_info = [
    {
    role_definition_type = "id"
    role_definition = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx/providers/Microsoft.Authorization/roleDefinitions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx"
    principal_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx"
    },
    {
    role_definition_type = "name"
    role_definition = "Contributor"
    principal_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx"
    }
  ]
}
```