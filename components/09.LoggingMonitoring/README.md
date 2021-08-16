# Introduction 
This module creates the following resources on Azure - Resource Group, Log Analytics Workspace and Monitor Diagnostic Setting

# Dependent Resources
- [Resource Group](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/resource_group)
- [Log Analytics Workspace](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/log_analytics_workspace)
- [Monitor Diagnostic Setting](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/monitor_diagnostic_setting)

---
# Module inputs and arguments to resources
These are the inputs within this module
| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| omsla_name | Name of the Log Analytics Workspace to be created | string | Yes |
| location | Name of Azure region location for the Resource group | string | Yes |
| rg_name | Name of the Resource Group where Log Analytics Workspace gets created | string | Yes |
| omsla_sku | Specifies the Sku of the Log Analytics Workspace. Possible values are: "Free", "PerNode", "Premium", "Standard", "Standalone", "Unlimited", "CapacityReservation" and "PerGB2018"| string | Yes|
| mon_diag_name | Name of the Monitor Diagnostic Setting | string | Yes|
| mon_res_id | ID of the Target Resource where Monitor Diagnostic is to be configured | list | Yes|
| tags | Resource Group Tags | map | Yes|

---
# Outputs
| Output | Description | Sensitive |
| --------- |:---------| :---------:|
| mod_out_rg_name | Name of the Resource Group | No |
| mod_out_la_id | The ID of Log Analytics Workspace | No |
| mod_out_la_primary_shared_key | The Primary shared key for the Log Analytics Workspace | Yes |
| mod_out_workspace_id | The Workspace ID of Log Analytics Workspace | No |

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
module "la" {
  source            = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//log_analytics"
  res_omsla_name    = "mvclog"
  res_location      = "eastUS"
  res_omsla_rg_name = "mvcrg"
  res_omsla_sku     = "PerGB2018"
}
```

```js
module "diag" {
  source            = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//monitor_diagnostic"
  res_mon_res_id    = ["/subscriptions/xxxxxxxx-xxxx-xxxx-xx6/resourcegroups/testrg/providers/Microsoft.ContainerInstance/containerGroups/test1op"]
  res_mon_diag_name = "mvcdiagnostic"
  res_mon_la_ws_id  = "/subscriptions/xxxxxxxx-xxxx-xxxx-xx6/resourceGroups/testrg/providers/Microsoft.OperationalInsights/workspaces/testlog"
}
```