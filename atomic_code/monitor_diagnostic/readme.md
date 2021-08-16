# Resource

- [Monitor Diagnostic](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/monitor_diagnostic_setting)

---

# Resource inputs and arguments to modules
These are the inputs within this resource

| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| res_mon_diag_name | Name of Monitor Diagnostic | string | Yes |
| res_mon_res_id | Monitor Diagnostic Target Resource ID | list | Yes |
| res_mon_la_ws_id | Monitor Diagnostic: Log Analytics Workspace ID | string | Yes |
---

# Outputs

| Output | Description | Type | Sensitive |
| --------- |:---------| :----------|:---------:|
| res_out_diag_id | The ID of the Diagnostic Setting | list | No |

# Dependencies

| Name | Description
| --------- |:---------|
| Resource Group | A resource group needs to be created prior to creation of Monitor Diagonstic |
| Log Analytics Work Space | A Log Analytics Work Space needs to be created prior to creation of Monitor Diagonstic |
---

# Sample Usage
#### Terraform Module
```js

module "monitor_diagnostic" {
    source       = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//monitor_diagnostic"
    res_mon_diag_name = "test"
    res_mon_res_id = ["/subscriptions/1ddee82b-44fd-49e9-b61f-c74238da7e97/resourcegroups/test/providers/microsoft.operationalinsights/workspaces/test"]
    res_mon_la_ws_id = "/subscriptions/1ddee82b-44fd-49e9-b61f-c74238da7e97/resourcegroups/test/providers/microsoft.operationalinsights/workspaces/test"
}
```
