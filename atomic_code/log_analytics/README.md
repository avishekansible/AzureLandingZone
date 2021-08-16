# Resource

- [Log Analytics Workspace] (https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace)

---

# Resource inputs and arguments to modules
These are the inputs within this resource

| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| res_omsla_name | Name of the log analytics workspace to be created | string | Yes |
| res_location | Specifies location/region where the log analytics workspace is created | string | Yes |
| res_omsla_rg_name | Specifies resource group in which the log analytics workspace is to be created | string | Yes |
| res_omsla_sku | Specifies the Sku of the Log Analytics Workspace created | string | Yes |

---

# Outputs

| Output | Description | Type | Sensitive |
| --------- |:---------| :----------|:---------:|
| res_out_la_id | The ID of the log analytics workspace | string | No |
| res_out_la_primary_shared_key |  The Primary shared key for the Log Analytics Workspace | string | yes |
| res_out_la_workspace_id |  The Workspace (or Customer) ID for the Log Analytics Workspace| string | No |

# Dependencies

| Name | Description
| --------- |:---------|
| Resource Group | A resource group needs to be created prior to creation of log analytics workspace |

---

# Sample Usage
#### Terraform Module
```js

module "log_analytics" {
  source = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//log_analytics"
  res_omsla_name = "logtest1"
  res_location = "EAST US"
  res_omsla_rg_name = "demo"
  res_omsla_sku = "PerGB2018"
}
```